///@desc Makes the game handle dialogue movement by the cutscener engine itself (not the player) or the player itself. This function will automatically give control back to the player after a cutscene ends.
///@param {real} value Handle the dialogue movement by the player (false) or handle it by the cutscener engine (true).
function cutscene_dialogue_autoskip(value){
	global.dialogue_autoskip = value
}
///@desc This function will automatically terminate when 'obj_drawer' does not exist or 'global.dialogue_autoskip' is false. Instructs 'obj_drawer' to skip ahead to the next page. It can keep skipping dialogue unless the parameter is set to false.
///@param {real} value Whether to skip continously (true) or stop skipping (false). Call and set this param to true and false respectively to control skips.
function cutscene_dialogue_skip(value) {
	if !instance_exists(obj_drawer) {
		return
	}
	with obj_drawer {
		
	}
}