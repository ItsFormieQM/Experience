var deviationx = 45
var deviationy = 124.5
var scale = 1.8
draw_set_font(font)
for (var i = 1; i <= string_length(test_string); i++) {
	draw_set_colour(c_white)
	var char = string_char_at(test_string,i)
	var char_1 = string_char_at(test_string,i+1)
	var char_2 = string_char_at(test_string,i+2)
	var cam = view_camera[0]
	var camw = camera_get_view_width(cam)
	scale = (surface_get_width(application_surface) / camw)
	if char == "^" {
		if char_1 == "Y" {
			draw_set_colour(c_yellow)
			i++
			continue
		}
		else if char_1 == "W" {
			draw_set_colour(c_white)
			i++
			continue
		}
	}
	
	
	draw_text_transformed(
		_x + deviationx,
		_y + deviationy,
		char,
		scale,
		scale,
		0
	)
	if !ran {
		show_debug_message(_x + deviationx)
		show_debug_message(_y + deviationy)
		ran = true
	}
	_x += string_width(char) * scale
}

_x = 68
_y = 960 / 2 + 85
