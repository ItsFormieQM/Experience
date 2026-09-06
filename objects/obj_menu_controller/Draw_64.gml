draw_set_halign(fa_center)
draw_set_valign(fa_center)

choice_pos_map = []
if !confirmation_prompt {
	//draw_text_ext_colour(
	//	_x,
	//	_y - 100, 
	//	name,
	//	1,
	//	9999,
	//	colour,
	//	colour,
	//	colour,
	//	colour,
	//	alpha
	//)
	draw_text_transformed_colour(
		_x, _y - (100 * scale), name, scale, scale, 0, colour, colour, colour, colour, alpha
	)
	
	//draw_text_ext_colour(
	//	_x,
	//	_y - 150, 
	//	"Enter your name",
	//	1,
	//	9999,
	//	colour,
	//	colour,
	//	colour,
	//	colour,
	//	alpha
	//)
	draw_text_transformed_colour(
		_x, _y - (150 * scale), "YOUR OWN NAME", scale, scale, 0, colour, colour, colour, colour, alpha
	)
	//draw_text_ext_colour(
	//	_x,
	//	_y + 240, 
	//	"SETTINGS",
	//	1,
	//	9999,
	//	colour,
	//	colour,
	//	colour,
	//	colour,
	//	alpha
	//)
	draw_text_transformed_colour(
		_x, _y + (240 * scale), "SETTINGS", scale, scale, 0, colour, colour, colour, colour, alpha
	)
	_x = 30 * scale

	for (var i = 0; i < array_length(letters); i++) {
		colour = c_white
		if sel_index == i {
			colour = c_yellow
		}
		if i < 10 {
			//draw_text_ext_colour(
			//	_x,
			//	_y, 
			//	letters[i].letter,
			//	1,
			//	9999,
			//	colour,
			//	colour,
			//	colour,
			//	colour,
			//	alpha
			//)
			draw_text_transformed_colour(
				_x, _y, letters[i].letter, scale, scale, 0, colour, colour, colour, colour, alpha
			)
			array_push(button_pos_map, {name: letters[i].letter, x_pos: _x, y_pos: _y})
		}
		if i >= 10 && i <= 19 {
			//draw_text_ext_colour(
			//	_x - 641,
			//	_y + 30, 
			//	letters[i].letter,
			//	1,
			//	9999,
			//	colour,
			//	colour,
			//	colour,
			//	colour,
			//	alpha
			//)
			draw_text_transformed_colour(
				_x - (641 * scale), _y + (30 * scale), letters[i].letter, scale, scale, 0, colour, colour, colour, colour, alpha
			)
			array_push(button_pos_map, {name: letters[i].letter, x_pos: _x - (641 * scale), y_pos: _y + (30 * scale)})
		}
		if i >= 20 {
			//draw_text_ext_colour(
			//	_x - (641 * 2 + 1),
			//	_y + 60, 
			//	letters[i].letter,
			//	1,
			//	9999,
			//	colour,
			//	colour,
			//	colour,
			//	colour,
			//	alpha
			//)
			draw_text_transformed_colour(
				_x - ((641 * 2 + 1) * scale), _y + (60 * scale), letters[i].letter, scale, scale, 0, colour, colour, colour, colour, alpha
			)
			array_push(button_pos_map, {name: letters[i].letter, x_pos: _x - ((641 * 2 + 1) * scale), y_pos: _y + (60 * scale)})
		}
		_x += (string_width(letters[i].letter) + 50) * scale
	}
	for (var i = 0; i < array_length(buttons); i++) {
		colour = c_white
		if (sel_index - array_length(letters)) == i {
			colour = c_yellow
		}
		//draw_text_ext_colour(
		//	(_x + 20) - (641 * 2 + 1),
		//	_y + 60, 
		//	buttons[i].button,
		//	1,
		//	9999,
		//	colour,
		//	colour,
		//	colour,
		//	colour,
		//	alpha
		//)
		draw_text_transformed_colour(
			_x + (20 * scale) - ((641 * 2 + 1) * scale), _y + (60 * scale), buttons[i].button, scale, scale, 0, colour, colour, colour, colour, alpha
		)
		array_push(button_pos_map, {name: buttons[i].button, x_pos: _x + (20 * scale) - ((641 * 2 + 1) * scale), y_pos: _y + (60 * scale)})
		_x += (string_width(buttons[i].button) + 43) * scale
		
	}
	_x = (640 / 2) * scale
	colour = c_white
	draw_sprite_ext(
		spr_heart_transp,
		0,
		button_pos_map[sel_index].x_pos - (1.5 * scale),
		button_pos_map[sel_index].y_pos - (17 * scale) + 30,
		1.5 * scale,
		1.5 * scale,
		0,
		colour,
		alpha
	)
}
else {
	//draw_text_ext_colour(
	//	_x,
	//	_y - 100, 
	//	"YOUR VERY OWN NAME",
	//	1,
	//	9999,
	//	colour,
	//	colour,
	//	colour,
	//	colour,
	//	alpha
	//)
	draw_text_transformed_colour(
		_x, _y - (100 * scale), "YOUR VERY OWN NAME", scale, scale, 0, colour, colour, colour, colour, alpha
	)
	var shake_strength = 1.35 * scale
	var _offset_x = random_range(-shake_strength, shake_strength)
	var _offset_y = random_range(-shake_strength, shake_strength)
	//draw_text_ext_transformed_colour(
	//	_x + _offset_x,
	//	(_y - 50) + _offset_y,
	//	name,
	//	1,
	//	9999,
	//	1.2,
	//	1.2,
	//	0,
	//	colour,
	//	colour,
	//	colour,
	//	colour,
	//	alpha
	//)
	draw_text_transformed_colour(
		_x + _offset_x, (_y - (50 * scale)) + _offset_y, name, scale * 1.2, scale * 1.2, _offset_x + _offset_y, colour, colour, colour, colour, alpha
	)
	
	colour = c_white
	if choice == choices[0].button {
		colour = c_yellow
	}
	//draw_text_ext_transformed_colour(
	//	_x - 150,
	//	(_y - 50) + 200,
	//	choices[0].button,
	//	1,
	//	9999,
	//	1.2,
	//	1.2,
	//	0,
	//	colour,
	//	colour,
	//	colour,
	//	colour,
	//	alpha
	//)
	draw_text_transformed_colour(
		_x - (150 * scale), (_y - (50 * scale)) + (200 * scale), choices[0].button, scale * 1.2, scale * 1.2, 0, colour, colour, colour, colour, alpha
	)
	array_push(choice_pos_map, {name: choices[0].button, x_pos: _x - (150 * scale), y_pos: (_y - (50 * scale)) + (200 * scale)})
	colour = c_white
	if choice == choices[1].button {
		colour = c_yellow
	}
	//draw_text_ext_transformed_colour(
	//	_x + 150,
	//	(_y - 50) + 200,
	//	choices[1].button,
	//	1,
	//	9999,
	//	1.2,
	//	1.2,
	//	0,
	//	colour,
	//	colour,
	//	colour,
	//	colour,
	//	alpha
	//)
	draw_text_transformed_colour(
		_x + (150 * scale), (_y - (50 * scale)) + (200 * scale), choices[1].button, scale * 1.2, scale * 1.2, 0, colour, colour, colour, colour, alpha
	)
	array_push(choice_pos_map, {name: choices[1].button, x_pos: _x + (150 * scale), y_pos: (_y - (50 * scale)) + (200 * scale)})
	colour = c_white
	draw_sprite_ext(
		spr_heart_transp,
		0,
		choice_pos_map[choice_index].x_pos - (1.5 * scale),
		choice_pos_map[choice_index].y_pos - (17 * scale) + 34.5,
		1.5 * scale,
		1.5 * scale,
		0,
		colour,
		alpha
	)
	
}
if start_game {
	xscale += 0.01 * scale
	yscale += 0.01 * scale
	var shake_strength = 1.35 * scale
	var _offset_x = random_range(-shake_strength, shake_strength)
	var _offset_y = random_range(-shake_strength, shake_strength)
	//draw_text_ext_transformed_colour(
	//	_x + _offset_x,
	//	(_y - 50) + _offset_y,
	//	name,
	//	1,
	//	9999,
	//	xscale,
	//	yscale,
	//	0,
	//	colour,
	//	colour,
	//	colour,
	//	colour,
	//	1
	//)
	draw_text_transformed_colour(
		_x + _offset_x, (_y - (50 * scale)) + _offset_y, name, scale * xscale, scale * yscale, 0, colour, colour, colour, colour, 1
	)
}