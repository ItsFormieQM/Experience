if !confirmation_prompt {
	if global.d_press {
		sel_index++
		if sel_index >= array_length(letters) + array_length(buttons) {
			sel_index = 0
		}
	}
	else if global.a_press {
		sel_index--
		if sel_index <= -1 {
			sel_index = (array_length(letters) + array_length(buttons)) - 1
		}
	}
	else if global.s_press {
		sel_index += 10
		if sel_index >= array_length(letters) + array_length(buttons){
			sel_index -= 10
		}
	}	
	else if global.w_press {
		sel_index -= 10
		if sel_index <= -1 {
			sel_index += 10
		}
	}
	if global.interacted && !fadeout{
		if string_length(sel_letter) == 1 {
			if string_length(name) <= 10 {
				name += sel_letter
			}
		}
		else {
			if string_lower(sel_letter) == "end" && name != "" {
				fadeout = true
				offensive = scr_is_offensive(name)
				show_debug_message(offensive)
				alarm[0] = 50
			}
			else if name != "" {
				name = string_delete(name,string_length(name),1)
			}
		}
	}	
	if sel_index < array_length(letters) {
		sel_letter = letters[sel_index].letter
	}
	else if sel_index >= array_length(letters){
		if sel_index < (array_length(buttons) + array_length(letters)) {
			sel_letter = buttons[sel_index - array_length(letters)].button
		}	
	}
}
else {
	if global.d_press {
		choice_index++
		if choice_index >= array_length(choices) {
			choice_index = 0
		}
	}
	else if global.a_press {
		choice_index--
		if choice_index <= -1 {
			choice_index = array_length(choices) - 1
		}
	}
	choice = choices[choice_index].button
	if global.interacted && !fadeout{
		if string_lower(choice) == "yes" {
			fadeout = true
			start_game = true
			scr_fadeout(global.current_mus,1000,0)
			snd_play(snd_fadein,1.5)
			instance_create(0,0,obj_whiter)
			obj_whiter.rate = 0.0035
			alarm[2] = 60 * 6
			global.name = name
		}
		else if string_lower(choice) == "no" {
			fadeout = true
			alarm[1] = 60
		}
	}
}
button_pos_map = []

if alpha >= 0 && fadeout {
	alpha -= 0.03
}
else if !fadeout && alpha < 1 {
	alpha += 0.02
}