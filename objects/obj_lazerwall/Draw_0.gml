var oldshd = shader_current()
shader_reset()
draw_sprite_ext(
	middle,
	image_index,
	x,
	y,
	image_xscale,
	image_yscale,
	0,
	c_white,
	image_alpha
)
// draw top
draw_sprite_ext(
	topdown,
	image_index,
	x,
	bbox_top-((sprite_get_height(topdown) / 2)*1),
	image_xscale,
	1,
	image_angle,
	c_white,
	image_alpha
)

draw_sprite_ext(
	topdown,
	image_index,
	x,
	bbox_bottom-((sprite_get_height(topdown) / 2)*-1),
	image_xscale * -1,
	-1,
	image_angle,
	c_white,
	image_alpha
)
draw_text(bbox_left,bbox_top,"ALPHAER: " + string(alphaer)) 
shader_set(oldshd)