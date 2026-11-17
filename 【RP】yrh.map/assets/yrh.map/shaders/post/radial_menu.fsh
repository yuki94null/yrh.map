#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;
uniform sampler2D IconsSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
    vec2 IconsSize;
};

layout(std140) uniform RadialMenuConfig {
    float SelectedSector;
    float FixedEnabled;
    float PublicEnabled;
    float SharedPinsVisible;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

const float SectorAngle = 1.0471975512;
const float InnerRadius = 0.137;
const float OuterRadius = 0.225;
const float IconRadius = 0.174;
const float IconSize = 0.046;

vec2 radialPoint(float angle, float radius) {
    return vec2(sin(angle), cos(angle)) * radius;
}

void main() {
    vec4 scene = texture(InSampler, texCoord);
    float shortSide = max(1.0, min(OutSize.x, OutSize.y));
    vec2 point = (texCoord - 0.5) * OutSize / shortSide;
    float pixel = 1.0 / shortSide;
    float radius = length(point);
    if (radius < InnerRadius - pixel || radius > OuterRadius + pixel) {
        fragColor = scene;
        return;
    }

    // Sector 1 begins at twelve o'clock, increasing clockwise.
    float sectorPosition = atan(point.x, point.y) / SectorAngle + 0.5;
    float sector = mod(floor(sectorPosition), 6.0) + 1.0;
    float gapDistance = min(fract(sectorPosition), 1.0 - fract(sectorPosition)) * SectorAngle * radius;
    float gapMask = smoothstep(1.5 * pixel, 2.5 * pixel, gapDistance);
    float innerMask = smoothstep(InnerRadius - pixel, InnerRadius + pixel, radius);
    float outerMask = 1.0 - smoothstep(OuterRadius - pixel, OuterRadius + pixel, radius);
    float outline = 1.0 - smoothstep(pixel, 2.5 * pixel,
        min(radius - InnerRadius, OuterRadius - radius));
    float highlight = 1.0 - step(0.5, abs(sector - SelectedSector));
    float removeSector = 1.0 - step(0.5, abs(sector - 4.0));
    float panelMask = innerMask * outerMask * gapMask;

    vec3 activeFill = mix(vec3(0.05, 0.55, 0.68), vec3(0.72, 0.10, 0.14), removeSector);
    vec3 activeEdge = mix(vec3(0.47, 0.96, 1.0), vec3(1.0, 0.54, 0.54), removeSector);
    vec3 fill = mix(vec3(0.035, 0.060, 0.085), activeFill, highlight);
    vec3 edge = mix(vec3(0.34, 0.43, 0.48), activeEdge, highlight);
    vec3 panel = mix(fill, edge, outline);
    float opacity = mix(0.58, 0.88, max(outline, highlight));
    vec3 color = mix(scene.rgb, panel, panelMask * opacity);

    // Atlas cells run left to right in clockwise sector order, starting at twelve o'clock.
    float sectorCenter = (sector - 1.0) * SectorAngle;
    vec2 iconOffset = point - radialPoint(sectorCenter, IconRadius);
    vec2 iconUV = iconOffset * vec2(1.0, -1.0) / IconSize + 0.5;
    if (all(greaterThanEqual(iconUV, vec2(0.0))) && all(lessThanEqual(iconUV, vec2(1.0)))) {
        vec2 atlasUV = (vec2(sector - 1.0, 0.0) + iconUV) / vec2(6.0, 1.0);
        vec2 cellStart = vec2((sector - 1.0) / 6.0, 0.0);
        vec2 texelInset = 0.5 / IconsSize;
        atlasUV = clamp(atlasUV, cellStart + texelInset, cellStart + vec2(1.0 / 6.0, 1.0) - texelInset);
        vec4 icon = texture(IconsSampler, atlasUV);
        color = mix(color, icon.rgb, icon.a * panelMask);
    }

    if (sector == 1.0 || sector == 2.0 || sector == 6.0) {
        // Place settings lamps in the outer clockwise corner of each wedge.
        float lampEnabled = sector == 1.0 ? SharedPinsVisible : (sector == 2.0 ? PublicEnabled : FixedEnabled);
        vec2 lampPosition = radialPoint(sectorCenter + 0.41, OuterRadius - 0.020);
        float lampDistance = length(point - lampPosition);
        float lampGlow = 1.0 - smoothstep(0.010, 0.021, lampDistance);
        color = mix(color, vec3(0.20, 0.93, 0.37), lampGlow * lampEnabled * panelMask * 0.30);
        float lampRim = 1.0 - smoothstep(0.012 - pixel, 0.012 + pixel, lampDistance);
        float lampFill = 1.0 - smoothstep(0.008 - pixel, 0.008 + pixel, lampDistance);
        vec3 lampEdge = mix(vec3(0.55, 0.61, 0.65), vec3(0.14, 0.38, 0.19), lampEnabled);
        vec3 lampCore = mix(vec3(0.10, 0.13, 0.16), vec3(0.37, 1.0, 0.51), lampEnabled);
        color = mix(color, lampEdge, lampRim * panelMask);
        color = mix(color, lampCore, lampFill * panelMask);
    }
    fragColor = vec4(color, scene.a);
}
