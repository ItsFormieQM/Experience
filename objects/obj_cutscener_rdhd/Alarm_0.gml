// Inherit the parent event
event_inherited();
instance_destroy()
with obj_savepoint {
	visible = true
}
with obj_cutscene_controller {
	cutscene_unfollow_camera()
}