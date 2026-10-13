var oldcol = draw_get_colour()
var oldfnt = draw_get_font()
draw_set_colour(c_white)
draw_set_font(fnt_main)
if active {
	draw_text(0, 320, $"COMMAND: {keyboard_string}")
}
draw_set_colour(oldcol)
draw_set_font(oldfnt)
