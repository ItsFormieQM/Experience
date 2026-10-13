///@desc Does a fade animation. It always starts fading out but if the boolean 'reversed' is set to true, then it starts fading in.
///@param {real} incrementor The amount to increment or decrement depending on the 'reversed' boolean value. 
///@param {bool} reversed Whether to make it fade out (reversed = false) or fade in (reversed = true). Default is false.
function cutscene_fade(_incrementor, _reversed){
	var fader = instance_create_layer(0,0,"TECHNICAL",obj_actor_fader,{incrementor: _incrementor, reversed: _reversed})
	if instance_exists(fader) {
		show_debug_message("TRUE")
	}
	else {
		show_debug_message("false")
	}
}