//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float alpha;
// I FINALLY KNOW HOW FCKING SHADERS WORK
void main()
{
    vec4 mycolour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	mycolour.a *= alpha;
	gl_FragColor = mycolour;
}
