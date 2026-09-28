draw_self()
var oldcol = draw_get_colour()
var oldfnt = draw_get_font()
draw_set_colour(c_white)
draw_set_font(fnt_main)
var oldh = draw_get_halign()
var oldv = draw_get_valign()
draw_set_halign(fa_center)
draw_set_valign(fa_center)
var cam = view_camera[0]
var camx = camera_get_view_x(cam)
var camy = camera_get_view_y(cam)
var scale = 0.5
if active {
	draw_text(320 + camx,60 + camy,"ENTER DIALOGUE")
	draw_text_ext_transformed(
		320 + camx, 
		150 + camy,
		keyboard_string,
		1.2,
		string_width(string_char_at(keyboard_string, 1)) * 128,
		scale,
		scale,
		0
	)
}
draw_set_halign(oldh)
draw_set_valign(oldv)
draw_set_colour(oldcol)
draw_set_font(oldfnt)
