ran = false
if !global.on_battle
	if global.interacted && skippable{
		buffer = true
		global.interacted = false
		if special_text {
			fade = true
		}
		else {
			if instance_exists(obj_interactable) {
				obj_interactable.can_move = true	
			}
			is_choicer = false
			_spr_scalex = 0
			_spr_scaley = 0
		
			font = fnt_main
			skippable = false
			plot++
			current_string = ""
			visible_text = ""
			timer = 0
			index = 0
			delay = 5
			stop_draw = false
			colour = c_white
			position_map = []
			_x = 9000
			_y = room_height / 2 - 200
			snd_timer = 0
			snd_delay = 5
			chars = []
			count++
			if count >= array_length(global.msg) {
				instance_destroy()	
			}	
			else {
				test_string = global.msg[count]
				_x_offset = global.xx_offset[count]
				_y = global.yy_offset[count]
				if spriter != noone {
					_spr_x = global.xx_offset_spriter[count]
					_spr_y = global.yy_offset_spriter[count]
				}
			}
			for (var i = 1; i < string_length(test_string); i++) {
				array_push(chars, string_char_at(test_string,i))
			}
			stop_snd = false
			audio_falloff_set_model(audio_falloff_none)
			gaster = false
			if string_char_at(test_string,1) == "^" && string_char_at(test_string,2) == "+" {
				snd = noone
			}
			else {
				snd = snd_txt1	
			}	
			alpha = 1
			special_text = false
			distance = 0
			fade_rate = 0.02
			ran = false
		}
	}
	if alpha >= 0 && fade{
		alpha -= fade_rate
		if !ran {
			ran = true
			plot++
		}
	}
	else if alpha <= 0 {
		fade = false
	}
	if alpha <= 0 {
		is_choicer = false
	
		font = fnt_main
		ran = false
		fade_rate = 0.02
		alpha = 1
		special_text = false
		fade = false
		skippable = false
		_spr_scalex = 0
		_spr_scaley = 0
		current_string = ""
		visible_text = ""
		timer = 0
		index = 0
		delay = 5	
		stop_draw = false
		colour = c_white
		position_map = []
		_x = 9000
		_y = room_height / 2 - 200
		snd_timer = 0
		snd_delay = 5
		chars = []
		count++
		if count >= array_length(global.msg) {
			instance_destroy()	
		}	
	
		else {
			test_string = global.msg[count]
			_x_offset = global.xx_offset[count]
			_y = global.yy_offset[count]
			if spriter != noone {
				_spr_x = global.xx_offset_spriter[count]
				_spr_y = global.yy_offset_spriter[count]
			}
		}
		for (var i = 1; i < string_length(test_string); i++) {
			array_push(chars, string_char_at(test_string,i))
		}
		stop_snd = false
		audio_falloff_set_model(audio_falloff_none)
		gaster = false
		if string_char_at(test_string,1) == "^" && string_char_at(test_string,2) == "+" {
			snd = noone
		}
		else {
			snd = snd_txt1	
		}	
		distance = 0
		if instance_exists(obj_interactable) {
			obj_interactable.can_move = true	
		}	
	}