//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 mycolour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	mycolour.r *= 1.0;
	mycolour.b *= 5.0;
	mycolour.g *= 1.5;
	gl_FragColor = mycolour;
}
