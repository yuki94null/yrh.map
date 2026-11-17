#version 330
#extension GL_ARB_separate_shader_objects : require

uniform sampler2D InSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 InSize;
};

layout(std140) uniform CursorConfig {
    float Radius;
    float Opacity;
};

layout(location = 0) in vec2 texCoord;
layout(location = 0) out vec4 fragColor;

void main() {
    vec4 scene = texture(InSampler, texCoord);
    float shortSide = max(1.0, min(OutSize.x, OutSize.y));
    vec2 point = (texCoord - 0.5) * OutSize / shortSide;
    float distanceToRing = abs(length(point) - Radius);

    float coreWidth = max(0.00045, 0.5 / shortSide);
    float haloWidth = max(0.0017, 1.25 / shortSide);
    if (distanceToRing > 3.5 * haloWidth) {
        fragColor = scene;
        return;
    }

    float core = distanceToRing / coreWidth;
    float halo = distanceToRing / haloWidth;
    float opacity = 0.77 * exp(-0.5 * core * core) + 0.19 * exp(-0.5 * halo * halo);
    fragColor = vec4(mix(scene.rgb, vec3(1.0), opacity * Opacity), scene.a);
}
