if reversed {
	image_alpha = 0
}
show_debug_message("spawned fader")
depth = layer_get_depth("TECHNICAL")
var cam = view_camera[0]
var camx = camera_get_view_x(cam)
var camy = camera_get_view_y(cam)
x = camx * 1.5
y = camy * 2.5