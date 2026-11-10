
var oldfnt = draw_get_font()
var oldcol = draw_get_colour()
draw_set_colour(c_white)
draw_set_font(fnt_main_small)
draw_text(0,45,$"X: {x}, Y: {y}")

draw_set_font(oldfnt)
draw_set_colour(oldcol)

