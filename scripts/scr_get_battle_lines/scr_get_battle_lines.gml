function scr_get_battle_lines(_msc = noone, count = 0){
	global.battle_lines = []
	global.battle_xscale = []
	global.battle_yscale = []
	global.battle_txt_x_offset = []
	global.battle_txt_y_offset = []
	global.battle_txt_scale = []
	var cam = view_camera[0]
	var cam_x = camera_get_view_x(cam)
	var cam_y = camera_get_view_y(cam)
	var result = scr_read_json("lang_en_battle.json")
	
	if _msc == noone {
		return "Lorem Ipsum dela factora"
	}
	switch _msc {
		// Ok this will be extremely big
		#region Test Enemy
			case "test_enemy":
				switch count {
					case 0:
						global.battle_lines[0] = result.test0_enemy
						global.battle_xscale[0] = 1
						global.battle_yscale[0] = 1
						global.battle_txt_x_offset[0] = 320
						global.battle_txt_y_offset[0] = 320
						global.battle_txt_scale[0] = 0.6
						break
					case 1:
						global.battle_lines[0] = result.test1_enemy
						break
					default:
						global.battle_lines[0] = "Lorem goon stop the goon son"
						break
				}
				break
		#endregion
	}
	show_debug_message(global.battle_lines)
}	