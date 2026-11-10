var sett = draw_get_settings()
draw_set_font(fnt_main)
draw_set_colour(c_white)
var text_to_draw = $"FUNCTIONS: {functions}"
var line_sep = 24
var max_width = camw_ab
draw_text_ext(0, 180, text_to_draw, line_sep, max_width);
