#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(std140) uniform RadialMenuConfig {
    float SelectedSector;
    float FixedEnabled;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

const float SectorAngle = 1.0471975512;
const float InnerRadius = 0.137;
const float OuterRadius = 0.225;

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

    vec3 fill = mix(vec3(0.035, 0.060, 0.085), vec3(0.05, 0.55, 0.68), highlight);
    vec3 edge = mix(vec3(0.34, 0.43, 0.48), vec3(0.47, 0.96, 1.0), highlight);
    vec3 panel = mix(fill, edge, outline);
    float opacity = mix(0.58, 0.88, max(outline, highlight));
    vec3 color = mix(scene.rgb, panel, innerMask * outerMask * gapMask * opacity);

    // The fixed setting is sector 6, at ten o'clock.
    float lampDistance = length(point - vec2(-0.157, 0.091));
    float lampRim = 1.0 - smoothstep(0.014 - pixel, 0.014 + pixel, lampDistance);
    float lampFill = 1.0 - smoothstep(0.009 - pixel, 0.009 + pixel, lampDistance);
    vec3 lampEdge = mix(vec3(0.55, 0.61, 0.65), vec3(0.14, 0.38, 0.19), FixedEnabled);
    vec3 lampCore = mix(vec3(0.10, 0.13, 0.16), vec3(0.37, 1.0, 0.51), FixedEnabled);
    color = mix(color, lampEdge, lampRim);
    fragColor = vec4(mix(color, lampCore, lampFill), scene.a);
}
