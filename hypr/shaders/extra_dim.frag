#version 300 es

precision mediump float;
in vec2 v_texcoord;
layout(location = 0) out vec4 fragColor;
uniform sampler2D tex;

void main() {
    vec4 pixColor = texture(tex, v_texcoord);
    
    // Subtle warmth + 40% brightness
    // Red: 0.40, Green: 0.38 (slightly lowered), Blue: 0.34 (cut by ~15%)
    vec3 subtleWarmDim = vec3(0.90, 0.87, 0.80);
    
    fragColor = vec4(pixColor.rgb * subtleWarmDim, pixColor.a);
}
