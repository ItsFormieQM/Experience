//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
// pls pass rgb and a values
uniform vec4 colour;
void main()
{
    vec4 mycolour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	mycolour.r *= colour.r;
	mycolour.g *= colour.g;
	mycolour.b *= colour.b;
	mycolour.a *= colour.a;
	gl_FragColor = mycolour;
}
