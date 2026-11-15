function scr_tempload(){
	var filename = global.save_folder + "tempsave.txt"
	try {
		
	
		if !file_exists(filename) {
			return -1
		}
		if !layer_exists("TECHNICAL") {
			layer_create(-999, "TECHNICAL")
		}
		if !instance_exists(obj_mainchara) {
			if room == room_gaster {
				instance_create(320,240,obj_mainchara)
				with obj_mainchara {
					visible = false
				}
			}
			else {
				instance_create(-666,-666,obj_mainchara)
			}
		}
	
		var file = file_text_open_read(filename)
		var rm = file_text_read_real(file)
		file_text_readln(file)
	
		obj_mainchara.goto_x = file_text_read_real(file)
		file_text_readln(file)
	
		obj_mainchara.goto_y = file_text_read_real(file)
		file_text_readln(file)
	
		file_text_readln(file)
		
		global.time = file_text_read_real(file)
		global.oldtime = global.time
		file_text_readln(file)
		
		global.lv = file_text_read_real(file)
		file_text_readln(file)
	
		var wm_slot = file_text_read_real(file)
		file_text_readln(file)
		var i = 0
		while true {
			var hp = file_text_read_real(file)
				
			file_text_readln(file)
			if hp == floor(0) {
				
				break
			}
			
			var maxhp = file_text_read_real(file)
			file_text_readln(file)
			
			if maxhp == floor(0) {
				
				break
			}
			global.maxhp[i] = maxhp
			global.hp[i] = hp
			i++
			
		}
		
		file_text_close(file)
	
		filename = global.save_folder + "tempflags.json"
		if file_exists(filename) {
			file = file_text_open_read(filename)
			for (i = 0; i <= Flag.COUNT; i++) {
				var sanitized_value = ""
				var value = file_text_read_string(file)
			
				for (var j = 1; j <= string_length(value); j++) {
					if string_char_at(value,j) == " " {
						for (var k = j + 1; k <= string_length(value); k++) {
							sanitized_value += string_char_at(value,k)
						}
						break
					}
				}
				file_text_readln(file)
				if string_canbe_int(sanitized_value) {
					sanitized_value = real(sanitized_value)
				}
				if string_canbe_bool(sanitized_value) {
					sanitized_value = bool(sanitized_value)
				}
				sdm(sanitized_value)
				global.flag[i] = sanitized_value
			}
			file_text_close(file)
			
		}
		
		instance_create(obj_mainchara.x,obj_mainchara.y,obj_warp, {target_marker_slot: wm_slot, target_room: rm, is_onload: true})
		random_set_seed(global.flag[Flag.Game_Seed],true)
	}
	catch (_exception) {
		sdm("ISSUE")
		
	}
	finally {
		filename = global.save_folder + "tempsave.txt"
		file_delete(filename)
		filename = global.save_folder + "tempflags.json"
		file_delete(filename)
	}
	display_set_timing_method(tm_sleep)
	display_set_sleep_margin(30)
	
	game_set_speed(60, gamespeed_fps)
	
	
}
