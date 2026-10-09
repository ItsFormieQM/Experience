///@desc Sets an actor's visibility.
///@param {Id.Instance} actor_handle The actor's instance ID to refer to.
///@param {bool} visible Either set to be visible (visible = true) or invisible (visible = false).
function cutscene_actor_set_visibility(actor_handle, is_visible){
	with actor_handle {
		visible = is_visible
	}
}