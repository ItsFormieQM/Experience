if !opened_settings {
	if instance_exists(obj_fade_warp) {
		alpha -= obj_fade_warp.fadeout_rate
	}
	
	if !loaded {
		if global.w_press {
			if index == -666 {
				index = max_save_files
			}
			index--
			if index == -1 {
				index = -666
			}
			snd_play(snd_menu_move,1)
		}
		if global.s_press {
			if index == -666 {
				index = -1
				
			}
			index++
			
			if index >= max_save_files {
				index = -666
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
		if index = -666 {
			opened_settings = true
			snd_play(snd_select,1.2)
			exit
		}
		var file = save_files[index].location
		
		if choicer == 0 {
		
			if file_exists(file) {
				cmd_load(index + 1)
				global.file_number = index + 1
			}
			else {
				global.save_folder = $"{game_save_id}Chapter {global.chapter}/save{index+1}/"
				sdm(global.save_folder)
				var larper = instance_create_layer(0,0,"TECHNICAL",obj_fade_warp)
				larper.image_alpha = 1
				larper.rate = 0.05
				larper.fadeout_rate = 0.05
				room_goto(global.start_room)
				global.file_number = index + 1
			}
			loaded = true
			sdm(file)
		}
		else if choicer == 1 {
			
			//game_change("/test","-game ut.win")
			
		}
		else if choicer == 2 {
			erase_file(file)
		}
		snd_play(snd_select,1.2)
		
	}
	
}
else {
	if global.interacted_x {
		if opened_settings {
			opened_settings = 0
			
			snd_play(snd_change)
		}
	}
	if global.w_press {
		sett_i--
		if sett_i < 0 {
			sett_i = len(setts) -1
		}
		snd_play(snd_menu_move,1.2)
	}
	else if global.s_press {
		sett_i++
		if sett_i >= len(setts) {
			sett_i = 0
		}
		snd_play(snd_menu_move,1.2)
	}
	if global.interacted {
		if is_callable(setts[sett_i].func) {
			
			script_execute(setts[sett_i].func)
			
		}
		
		sdm(sett_i)
		sdm("wtf")
	}
}
