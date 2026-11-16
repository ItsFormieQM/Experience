//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
// pls pass rgb and a values
void main()
{
    vec4 mycolour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	mycolour.r *= 1.0;
	mycolour.b *= 10.0;
	mycolour.g *= mycolour.b / 2.25;
	gl_FragColor = mycolour;
}
