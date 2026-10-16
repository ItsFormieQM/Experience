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
	
	if char == "/" {
		if char_1 == "E" {
			stopit = true
			i++
			continue
		}
	}
	if char == "^" {
		if char_1 == "/" {
			_y += string_height(char) * scale + 14
			_x = 68
			i++
			continue
		}
		else if char_1 == "Y" {
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
	if !stopit {
		show_debug_message("fuck")
		if char != " " {
			if found {
				array_push(choice_pos_map,{x_pos: _x + deviationx, y_pos: _y + deviationy})
				found = false
			}
		}
		else {
			found = true
		}
	}
	else {
		if !itdid {
			
			myx = choice_pos_map[0].x_pos
			myy = choice_pos_map[0].y_pos
			
			itdid = true
			
		}
	}
	if char == "_" {
		
		char = " "
	}
	draw_text_transformed(
		_x + deviationx,
		_y + deviationy,
		char,
		scale,
		scale,
		0
	)
	
	
	_x += string_width(char) * scale
}
if !ran {
	
	show_debug_message(_x + deviationx)
	show_debug_message(_y + deviationy)
	show_debug_message(choice_pos_map)
	
	ran = true
}
_x = 68
_y = 960 / 2 + 85

var _scale = 2
draw_sprite_ext(
	spr_small_heart,
	0,
	myx - 35,
	myy + 25,
	_scale,
	_scale,
	0,
	c_white,
	1
)
