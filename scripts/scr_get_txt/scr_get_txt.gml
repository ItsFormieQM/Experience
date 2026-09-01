function scr_get_txt(_msc, ui = false){
	global.msg = []
	global.xx_offset = []
	global.yy_offset = []
	if !ui {
		var json = "lang_en.json"
		var result = scr_read_json(json)
		var index = 0
		switch _msc {
			case "gaster_start":
				global.msg[index] = string_upper(result.gaster)
				global.xx_offset[index] = room_width / 2 - 100
				global.yy_offset[index] = room_height / 2 - 200
			
				index = 1
				global.msg[index] = string_upper(result.gaster_1)
				global.xx_offset[index] = room_width / 2 - 110
				global.yy_offset[index] = room_height / 2 - 200
			
				index = 1
				global.msg[index] = string_upper(result.gaster_1)
				global.xx_offset[index] = room_width / 2 - 110
				global.yy_offset[index] = room_height / 2 - 200
				break
			
			case "gaster_start_2":
				index = 0
				global.msg[index] = string_upper(result.gaster_2) // EXCELLENT
				global.xx_offset[index] = room_width / 2 - 100
				global.yy_offset[index] = room_height / 2 - 200
			
				index = 1
				global.msg[index] = string_upper(result.gaster_3) // TRULY EXCELLENT
				global.xx_offset[index] = room_width / 2 - 100
				global.yy_offset[index] = room_height / 2 - 200
			
				index = 2
				global.msg[index] = string_upper(result.gaster_4) // SHALL WE BEGIN?
				global.xx_offset[index] = room_width / 2 - 100
				global.yy_offset[index] = room_height / 2 - 200
				break
			case "story":
				index = 0
				global.msg[index] = result.start_1
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
			
				index = 1
				global.msg[index] = result.start_2
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
				index = 2
				global.msg[index] = result.start_3
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
			
				index = 3
				global.msg[index] = result.start_4
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
			
				index = 4
				global.msg[index] = result.start_5
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
			
				index = 5
				global.msg[index] = result.start_6
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
			
				index++
				global.msg[index] = result.start_7
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
			
				index++
				global.msg[index] = result.start_8
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
			
				index++
				global.msg[index] = result.start_9
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
			
				index++
				global.msg[index] = result.start_10
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 120
			
				index = 11 - 1
				global.msg[index] = result.start_11
				global.xx_offset[index] = 20
				global.yy_offset[index] = room_height / 2 + 90
				break
			default:
				break
		}
	}
	else {
		var json = "lang_en_ui.json"
		var result = scr_read_json(json)
		var index = 0
		switch _msc {
			case "test_1":
				index = 0
				global.msg[index] = result.test_1
				global.xx_offset[index] = 68
				global.yy_offset[index] = room_height / 2 + 85
				
				index = 1
				global.msg[index] = result.test_2
				global.xx_offset[index] = 68
				global.yy_offset[index] = room_height / 2 + 85
				break
			case "test_2":
				index = 0
				global.msg[index] = result.test_1_1
				global.xx_offset[index] = 68
				global.yy_offset[index] = room_height / 2 + 85
				
				index = 1
				global.msg[index] = result.test_1_2
				global.xx_offset[index] = 68
				global.yy_offset[index] = room_height / 2 + 85
				
				index = 2
				global.msg[index] = result.test_1_3
				global.xx_offset[index] = 68
				global.yy_offset[index] = room_height / 2 + 85
				break
			default:
				break
		}	
	}
}