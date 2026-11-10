
var cam = view_camera[0]
var camx = camera_get_view_x(cam) 
var camy = camera_get_view_y(cam)
draw_sprite_ext(
	spr_fade_black,
	0,
	0,
	0,
	1,
	1,
	0,
	c_black,
	image_alpha
)