global.cutscene = false
ran = false
executed = false

mus_fade(60,1)
// Inherit the parent event
instance_destroy()

with obj_cutscene_controller {
	cutscene_unfollow_camera()
}