global.cutscene = false
ran = false
executed = false
global.flag[Flag.Story_Day2Intro_School] = false

// Inherit the parent event
instance_destroy()

with obj_cutscene_controller {
	cutscene_unfollow_camera()
}