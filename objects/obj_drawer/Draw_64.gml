var _sett = draw_get_settings()
test_str = string_replace_all(test_string, "{c}", global.name)
test_str = string_replace_all(test_str, "{C}", global.name)
var last_char = string_char_at(test_str, string_length(test_str))
draw_set_font(font)
var scale = 2
if !is_choicer {
	timer++
	snd_timer++
}

if global.held_x {
	timer += delay / 2
	snd_timer += delay / 2
	show_debug_message("ran")
}

if buffer {
	buffer = false
	timer = delay
}

if timer >= delay && !stop_draw {
	index++
	
	if string_char_at(test_str, index) == "/" {
		if string_char_at(test_str,index + 1) == "C" {
			is_choicer = true
		}
		else if string_char_at(test_str, index + 1) == "S" {
			index += 2
			skippable = true
		}
		else if string_char_at(test_str, index + 1) == "E" {
			stop_draw = true
			stop_snd = true
			skippable = true
			index += 2
		}
	}

	if string_char_at(test_str, index) == "#" {
		// Give points
		if string_char_at(test_str, index + 1) == "G" {
			if string_char_at(test_str, index + 2) == "P" {
				if (string_char_at(test_str, index + 3) == "+" || string_char_at(test_str, index + 3) == "-") &&
					string_canbe_int(string_char_at(test_str, index + 4)) &&
					string_canbe_int(string_char_at(test_str, index + 5)) &&
					string_canbe_int(string_char_at(test_str, index + 6)) {
						global.player_points += real(
													string_char_at(test_str, index + 3) +
													string_char_at(test_str, index + 4) +
													string_char_at(test_str, index + 5) +
													string_char_at(test_str, index + 6)
												)
						index += 7
				}
			}
		}
		
		// Sound Player
		if string_char_at(test_str, index + 1) == "S" {
			if string_char_at(test_str, index + 2) == "P" {
				if string_canbe_int(string_char_at(test_str, index + 3)) &&
					string_canbe_int(string_char_at(test_str, index + 4)) &&
					string_canbe_int(string_char_at(test_str, index + 5)) {
						var compare = real(
										string_char_at(test_str, index + 3) +
										string_char_at(test_str, index + 4) +
										string_char_at(test_str, index + 5)
									)
						switch compare {
							case 0:
								snd_play(snd_notice)
								break
							case 1:
								snd_play(snd_openchest)
								break
							case 2:
								snd_play(snd_award_1)
								break
							default:
								break
						}
						index += 6
				}
			}
		}
		// Expression Scaler By X
		if string_char_at(test_str, index + 1) == "E" {
			if string_char_at(test_str, index + 2) == "S" {
				if string_char_at(test_str, index + 3) == "C" {
					if string_char_at(test_str, index + 4) == "X" {
						if string_canbe_int(string_char_at(test_str, index + 5)) &&
							string_canbe_int(string_char_at(test_str, index + 6)) && 
							string_canbe_int(string_char_at(test_str, index + 7)) {
							_spr_scalex = real(
											string_char_at(test_str, index + 5) +
											string_char_at(test_str, index + 6) +
											string_char_at(test_str, index + 7)
										)
							index += 8
							
						}
					}
				}
			}
		}
		
		// Expression Scaler By Y
		if string_char_at(test_str, index + 1) == "E" {
			if string_char_at(test_str, index + 2) == "S" {
				if string_char_at(test_str, index + 3) == "C" {
					if string_char_at(test_str, index + 4) == "Y" {
						if string_canbe_int(string_char_at(test_str, index + 5)) &&
							string_canbe_int(string_char_at(test_str, index + 6)) && 
							string_canbe_int(string_char_at(test_str, index + 7)) {
							_spr_scaley = real(
											string_char_at(test_str, index + 5) +
											string_char_at(test_str, index + 6) +
											string_char_at(test_str, index + 7)
										)
							index += 8
							
						}
					}
				}
			}
		}
		// Expression Changer (What character portrait to use)
		if string_char_at(test_str, index + 1) == "E" {
			if string_char_at(test_str, index + 2) == "T" {
				if string_canbe_int(string_char_at(test_str, index + 3)) {
					if string_canbe_int(string_char_at(test_str, index + 4)) {
						if string_canbe_int(string_char_at(test_str, index + 5)) {
							var compare = real(
											string_char_at(test_str, index + 3) +
											string_char_at(test_str, index + 4) +
											string_char_at(test_str, index + 5)
										)
							index += 6
							switch compare {
								case 0:
									spriter = noone
									break
								case 1:
									spriter = spr_noelle_dialogue
									break
								default:
									break
							}
						}
					}
				}
			}
		}

		// Expression Indice
		if string_char_at(test_str, index + 1) == "E" {
			if string_char_at(test_str, index + 2) == "I" {
				if string_canbe_int(string_char_at(test_str, index + 3)) {
					if string_canbe_int(string_char_at(test_str, index + 4)) {
						if string_canbe_int(string_char_at(test_str, index + 5)) {
							var compare = real(
											string_char_at(test_str, index + 3) +
											string_char_at(test_str, index + 4) +
											string_char_at(test_str, index + 5)
										)
							index += 6
							spriter_indice = compare
						}
					}
				}
			}
		}
		
		if string_char_at(test_str, index + 1) == "F" {
			special_text = true
			index += 2
		}
		
		if string_char_at(test_str, index + 1) == "A" {
			chest_award = true
			index += 2	
		}	
		
		if string_char_at(test_str, index + 1) == "r" {
			if string_char_at(test_str, index + 2) == "t" {
				if string_canbe_int(string_char_at(test_str, index + 3)) &&
					string_canbe_int(string_char_at(test_str, index + 4)) &&
					string_canbe_int(string_char_at(test_str, index + 5)) &&
					string_canbe_int(string_char_at(test_str, index + 6)) &&
					string_canbe_int(string_char_at(test_str, index + 7)) {
						fade_rate = real($"{string_char_at(test_str, index + 3)}{string_char_at(test_str, index + 4)}.{string_char_at(test_str, index + 5)}{string_char_at(test_str, index + 6)}{string_char_at(test_str, index + 7)}")
						index += 8
				}
			}
		}
		
		if string_char_at(test_str, index + 1) == "t" {
			if string_canbe_int(string_char_at(test_str, index + 2)) &&
				string_canbe_int(string_char_at(test_str, index + 3)) &&
				string_canbe_int(string_char_at(test_str, index + 4)) {
				var compare = real(
					string_char_at(test_str, index + 2) +
					string_char_at(test_str, index + 3) +
					string_char_at(test_str, index + 4)
				)
				index += 5
				switch compare {
					case 0:
						snd = snd_txt1
						break
					case 1:
						snd = snd_txt2
						break
					case 2:
						snd = snd_flowery
						break
					case 3:
						snd = snd_txtnoelle
						break
					default:
						break
				}	
			}
		}
		
		if string_char_at(test_str, index + 1) == "f" {
			if string_char_at(test_str, index + 2) == "n" {
				if string_char_at(test_str, index + 3) == "t" {
					if string_canbe_int(string_char_at(test_str, index + 4)) &&
						string_canbe_int(string_char_at(test_str, index + 5)) &&
						string_canbe_int(string_char_at(test_str, index + 6)) {
						var compare = real(
										string_char_at(test_str, index + 4) +
										string_char_at(test_str, index + 5) +
										string_char_at(test_str, index + 6)
									)
						index += 7
						switch compare {
							case 0:
								font = fnt_main
								show_debug_message("font main")
								break
							case 1:
								font = fnt_main_small
								break
							default:
								break
						}
					}
				}
			}	
		}	
	}
	
	if string_char_at(test_str, index) == "^" {
		
		if string_char_at(test_str, index + 1) == "D" {
			if string_char_at(test_str, index + 2) == "T" {
				if string_canbe_int(string_char_at(test_str, index + 3)) &&
					string_canbe_int(string_char_at(test_str, index + 4)) &&
					string_canbe_int(string_char_at(test_str, index + 5)) &&
					string_canbe_int(string_char_at(test_str, index + 6)) {
					
					distance = real(
						string_char_at(test_str, index + 3) +
						string_char_at(test_str, index + 4) +
						string_char_at(test_str, index + 5) +
						string_char_at(test_str, index + 6)
					)
					index += 6
				}
			}
		}	
		else if string_char_at(test_str, index + 1) == "S" {
			if string_canbe_int(string_char_at(test_str, index + 2)) &&
				string_canbe_int(string_char_at(test_str, index + 3)) &&
				string_canbe_int(string_char_at(test_str, index + 4)) {
				var _d1 = string_char_at(test_str, index + 2)
				var _d2 = string_char_at(test_str, index + 3)
				var _d3 = string_char_at(test_str, index + 4)
				snd_delay = real(_d1 + _d2 + _d3)
				snd_timer = 0
				index += 4
			}
		}	
		else if string_canbe_int(string_char_at(test_str, index + 1)) &&
			string_canbe_int(string_char_at(test_str, index + 2)) &&
			string_canbe_int(string_char_at(test_str, index + 3)) {
			var _d1 = string_char_at(test_str, index + 1)
			var _d2 = string_char_at(test_str, index + 2)
			var _d3 = string_char_at(test_str, index + 3)
			delay = real(_d1 + _d2 + _d3)
			timer = 0
			index += 3
		}
		else if string_char_at(test_str, index + 1) == "+" || !string_canbe_int(string_char_at(test_str, index + 1)) {
			visible_text += string_char_at(test_str, index)
			visible_text += string_char_at(test_str, index + 1)
			index++
		}
	}
	else {
		visible_text += string_char_at(test_str, index)
	}
	
	timer = 0
	if string_length(visible_text) >= string_length(test_str) {
		stop_snd = true	
		show_debug_message("true")
	}	
}

var test = visible_text
draw_set_halign(fa_left)
draw_set_valign(fa_top)

for (var i = 1; i <= string_length(test); i++) {
	var char = string_char_at(test, i)
	if char == "^" {
		var future_char_2 = string_char_at(test, i + 1)
		if future_char_2 == "/" {
			_y += string_height(char) * scale
			_x = _x_offset
			i++
			continue
		} 
		else if future_char_2 == "R" { 
			colour = c_red
			draw_set_colour(c_red) 
			i++
			continue 
		}
		else if future_char_2 == "+" { 
			gaster = true 
			snd = noone
			i++ 
			continue
		} 
		else if future_char_2 == "W" { 
			colour = c_white
			draw_set_colour(c_white)
			i++
			continue
		}
		else if future_char_2 == "Y" { 
			colour = c_yellow 
			draw_set_colour(c_yellow)
			i++
			continue
		}
		else if future_char_2 == "B" { 
			colour = c_blue
			draw_set_colour(c_blue)
			i++
			continue
		}
		else if future_char_2 == "G" { 
			colour = c_green
			draw_set_colour(c_green)
			i++
			continue
		}
		else if future_char_2 == "K" { 
			colour = c_black
			draw_set_colour(c_black)
			i++
			continue
		}
		else if future_char_2 == "M" { 
			colour = c_maroon
			draw_set_colour(c_maroon)
			i++
			continue
		}
		else if future_char_2 == "O" { 
			colour = c_orange
			draw_set_colour(c_orange)
			i++
			continue
		}
		else if future_char_2 == "P" { 
			colour = c_purple
			draw_set_colour(c_purple)
			i++
			continue
		}
		else if future_char_2 == "S" { 
			colour = c_silver
			draw_set_colour(c_silver)
			i++
			continue
		}
		else if future_char_2 == "T" { 
			colour = c_teal
			draw_set_colour(c_teal)
			i++
			continue
		}
		else if future_char_2 == "A" { 
			colour = c_aqua
			draw_set_colour(c_aqua)
			i++
			continue
		}
		else if future_char_2 == "F" { 
			colour = c_fuchsia
			draw_set_colour(c_fuchsia)
			i++
			continue
		}
		else if future_char_2 == "L" { 
			colour = c_lime
			draw_set_colour(c_lime)
			i++
			continue
		}
		else if future_char_2 == "N" { 
			colour = c_navy
			draw_set_colour(c_navy)
			i++
			continue
		}
		else if future_char_2 == "'" { 
			colour = c_dkgray
			draw_set_colour(c_dkgray)
			i++
			continue
		}
		else if future_char_2 == "?" { 
			colour = c_gray
			draw_set_colour(c_gray)
			i++
			continue
		}
		else if future_char_2 == ":" { 
			colour = c_ltgray
			draw_set_colour(c_ltgray)
			i++
			continue
		}
	}
	
	if !gaster {
		draw_text_ext_transformed_colour(
			_x + 70,_y + 80,char,1,999,scale,scale,0,colour,colour,colour,colour,alpha
		)
		_x += (string_width(char) * scale) + distance
	}
	else {
		var _text = char
		var _tx = _x
		var _ty = _y
		var _border_thick = 2 * scale
		var _text_color = draw_get_colour()
		var _outline_color = c_gray
		for (var j = 1; j <= _border_thick; j++) {
			draw_text_transformed_colour(
				_tx - j + 70, _ty + 80, _text, scale,scale,0,_outline_color,_outline_color,_outline_color,_outline_color,alpha
			)
			draw_text_transformed_colour(
				_tx + j + 70, _ty + 80, _text, scale,scale,0,_outline_color,_outline_color,_outline_color,_outline_color,alpha
			)
			draw_text_transformed_colour(
				_tx + 70, _ty - j + 80, _text, scale,scale,0,_outline_color,_outline_color,_outline_color,_outline_color,alpha
			)
			draw_text_transformed_colour(
				_tx + 70, _ty + j + 80, _text, scale,scale,0,_outline_color,_outline_color,_outline_color,_outline_color,alpha
			)
		}
		draw_text_transformed_colour(
			_tx + 70,_ty + 80,_text,scale,scale,0,_text_color,_text_color,_text_color,_text_color,alpha
		)
		
		_x += (string_width(char) * scale) + distance
	}
}


if snd_timer >= snd_delay && !stop_snd {
	if snd != noone {
		audio_play_sound(snd, 1, false)
	}
	snd_timer = 0
}
if spriter != noone {
	_spr_x = global.xx_offset_spriter[count]
	_spr_y = global.yy_offset_spriter[count]
	draw_sprite_ext(
		spriter,
		spriter_indice,
		_spr_x,
		_spr_y,
		_spr_scalex,
		_spr_scaley,
		0,
		c_white,
		1
	)
}


_x = global.xx_offset[count]
_y = global.yy_offset[count]
draw_set_colour(c_white)
if instance_exists(obj_dialogue) && !global.on_battle {
	with obj_dialogue {
		visible = true
	}
}
if is_choicer {
	
}