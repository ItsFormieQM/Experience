myvideo = scr_load_video(pth)
if !variable_instance_exists(id,"owner") {
	owner = noone
}
skip = function() {
	sdm("SKIP")
	video_close()
	instance_destroy()
}