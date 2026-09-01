// tst_shader.fsh - Custom Fragment Shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 base_color = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    vec3 inverted_rgb = vec3(1.0) - base_color.rgb;
    gl_FragColor = vec4(inverted_rgb, base_color.a);
}
