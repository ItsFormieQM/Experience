//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
// pls pass rgb and a values
varying vec4 colour;
void main()
{
    vec4 mycolour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	mycolour.r *= 0.0;
	mycolour.g *= 0.0;
	mycolour.b *= 0.0;
	gl_FragColor = mycolour;
}
