

var oldfnt = draw_get_font()
var oldcol = draw_get_colour()
draw_set_colour(c_white)
draw_set_font(fnt_main_small)
draw_text(0,120,$"CUTSCENE STATE: {global.cutscene ? "True" : "False"}")

draw_set_font(oldfnt)
draw_set_colour(oldcol)