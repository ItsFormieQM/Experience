if visible {
	if instance_exists(obj_fade_warp) {
		alpha -= obj_fade_warp.fadeout_rate
	}
	if !loaded {
		if global.w_press {
			index--
			if index <= -1 {
				index = max_save_files - 1
			}
			snd_play(snd_menu_move,1)
		}
		if global.s_press {
			index++
			if index >= max_save_files {
				index = 0
			}
			snd_play(snd_menu_move,1)
		}
		if global.a_press {
			choicer--
			if choicer <= -1 {
				choicer = array_length(choices) - 1	
			}
			snd_play(snd_menu_move,1)
		}
		if global.d_press {
			choicer++
			if choicer >= array_length(choices) {
				choicer = 0	
			}
			snd_play(snd_menu_move,1)
		}
	}
	if global.interacted && !loaded{
		global.time = 0
		var file = save_files[index].location
		if choicer == 0 {
		
			if file_exists(file) {
				cmd_load(index + 1)
			}
			else {
				global.save_folder = game_save_id + $"save{index + 1}/"
			
				room_goto(room_luzaro_beach_wharf)
			}
			loaded = true
			show_debug_message(file)
		}
		else if choicer == 2 {
			erase_file(file)
		}
		snd_play(snd_select,1.2)
		show_debug_message("INDEX: " + string(index))
		show_debug_message("CHOICER: " + string(choicer))
	}
}
if global.flag[Flag.On_Battle] {
	visible = false
}
else {
	visible = true
}

