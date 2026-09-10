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
				global.xx_offset[index] = 1280 / 2 - 220
				global.yy_offset[index] = 960 / 2 - 500
			
				index = 1
				global.msg[index] = string_upper(result.gaster_1)
				global.xx_offset[index] = 1280 / 2 - 220
				global.yy_offset[index] = 960 / 2 - 500
				break
			
			case "gaster_start_2":
				index = 0
				global.msg[index] = string_upper(result.gaster_2) // EXCELLENT
				global.xx_offset[index] = 1280 / 2 - 220
				global.yy_offset[index] = 960 / 2 - 500
			
				index = 1
				global.msg[index] = string_upper(result.gaster_3) // TRULY EXCELLENT
				global.xx_offset[index] = 1280 / 2 - 200
				global.yy_offset[index] = 960 / 2 - 500
			
				index = 2
				global.msg[index] = string_upper(result.gaster_4) // SHALL WE BEGIN?
				global.xx_offset[index] = 1280 / 2 - 200
				global.yy_offset[index] = 960 / 2 - 500
				break
			case "story":
				index = 0
				global.msg[index] = result.start_1
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
			
				index = 1
				global.msg[index] = result.start_2
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
				index = 2
				global.msg[index] = result.start_3
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
			
				index = 3
				global.msg[index] = result.start_4
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
			
				index = 4
				global.msg[index] = result.start_5
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
			
				index = 5
				global.msg[index] = result.start_6
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
			
				index++
				global.msg[index] = result.start_7
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
			
				index++
				global.msg[index] = result.start_8
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
			
				index++
				global.msg[index] = result.start_9
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
			
				index++
				global.msg[index] = result.start_10
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 120
			
				index = 11 - 1
				global.msg[index] = result.start_11
				global.xx_offset[index] = 20
				global.yy_offset[index] = 960 / 2 + 90
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
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 1
				global.msg[index] = result.test_2
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 2
				global.msg[index] = result.test_3
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 3
				global.msg[index] = result.test_4
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 4
				global.msg[index] = result.test_5
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 5
				global.msg[index] = result.test_6
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 6
				global.msg[index] = result.test_7
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				break
			case "test_2":
				index = 0
				global.msg[index] = result.test_1_1
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 1
				global.msg[index] = result.test_1_2
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 2
				global.msg[index] = result.test_1_3
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 3
				global.msg[index] = result.test_1_4
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 4
				global.msg[index] = result.test_1_5
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 5
				global.msg[index] = result.test_1_6
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 6
				global.msg[index] = result.test_1_7
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 7
				global.msg[index] = result.test_1_8
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 8
				global.msg[index] = result.test_1_9
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				break
			case "use_item_heroin":
				index = 0
				global.msg[index] = result.used_item_heroin
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 1
				global.msg[index] = result.used_item_heroin_1
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 2
				global.msg[index] = result.used_item_heroin_2
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				
				index = 3
				global.msg[index] = result.used_item_heroin_3
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				break
			case "flowery_test_yap_1":
				index = 0
				global.msg[index] = result.flowery_test_1
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				
				index = 1
				global.msg[index] = result.flowery_test_2
				global.xx_offset[index] = 68
				global.yy_offset[index] = 960 / 2 + 85
				break
			case "noelle_test":
				index = 0
				global.msg[index] = result.noelle_test_1
				global.xx_offset[index] = 68 + 220
				global.yy_offset[index] = 960 / 2 + 85
				global.xx_offset_spriter[index] = 220
				global.yy_offset_spriter[index] = 960 - 185
				
				index = 1
				global.msg[index] = result.noelle_test_2
				global.xx_offset[index] = 68 + 220
				global.yy_offset[index] = 960 / 2 + 85
				global.xx_offset_spriter[index] = 220
				global.yy_offset_spriter[index] = 960 - 185
				
				index = 2
				global.msg[index] = result.noelle_test_3
				global.xx_offset[index] = 68 + 220
				global.yy_offset[index] = 960 / 2 + 85
				global.xx_offset_spriter[index] = 220
				global.yy_offset_spriter[index] = 960 - 185
				break
			case "battle_test_1_1":
				index = 0
				global.msg[index] = result.test_battle_1
				global.xx_offset[index] = 68 - 90
				global.yy_offset[index] = 960 / 2 + 185
				global.xx_offset_spriter[index] = 220
				global.yy_offset_spriter[index] = 960 - 185
				break
			default:
				break
				
		}	
	}
}