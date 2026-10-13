///@desc Sets an actor's actual colour without facial or other features to the specified rgb values
///@param {Id.Instance} actor_handle The actor ID to refer to.
///@param {real} red How much red to set.
///@param {real} green How much green to set.
///@param {real} blue How much blue to set.
function cutscene_actor_set_rgb(actor_handle,red=0,green=0,blue=0){
	red = clamp(red,0,255)
	green = clamp(green,0,255)
	blue = clamp(blue,0,255)
	with actor_handle {
		cutscene_set_rgb(red,green,blue)
	}
}