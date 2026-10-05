var oldfnt = draw_get_font()
draw_set_font(fnt_main_small)
draw_set_colour(c_white)
var scale = 2
draw_sprite_ext(
	spr_small_heart,
	0,
	_x - 45,
	_y + 25,
	scale,
	scale,
	0,
	c_white,
	1
)
draw_set_font(oldfnt)