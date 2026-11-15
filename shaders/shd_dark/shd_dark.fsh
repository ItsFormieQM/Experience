//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec3 col;
// I FINALLY KNOW HOW FCKING SHADERS WORK
void main()
{
    vec4 mycolour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	mycolour.r *= col.r;
	mycolour.g *= col.g;
	mycolour.b *= col.b;
	gl_FragColor = mycolour;
}
