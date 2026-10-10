if keyboard_check_pressed(ord("Q")) {
	time_source_reconfigure(time_source_global, 1, time_source_units_frames, function() {}, [], -1)
	cmd_restart()
}
//else if keyboard_check_pressed(ord("6")) {
//	if instance_exists(obj_mainchara) {
//		instance_create(obj_mainchara.x - 30, obj_mainchara.y,obj_vaporized)
//	}
//}
else if keyboard_check_pressed(ord("1")) && !global.flag[Flag.On_Battle] {
	if global.canmove {
		if room >= room_test {
			var inst = instance_create(-1000,-1000,obj_battle_test,{_song: mus_battle_files, _enemy_type: "none", _volume: 1.5})
			inst.force_run = true
		}
		else {
			room_goto(room_test)
			alarm[0] = 5
		}
		
	}
	
}
if room == room_deped_hallway_down {
	if instance_exists(obj_choicer) {
		ran = false
	}
	if global.choice == 0 && !instance_exists(obj_choicer) {
		if !ran {
			ran = true
			pause(60)
			cmd_dialogue_play("choicer_test_1")
		}
			
	}
	else if global.choice == 1 {
		if !ran {
			cmd_dialogue_play("choicer_test_1")
			ran = true
		}
	}
}
if room == room_luzaro_beach_wharf {
	
}
if global.flag[Flag.Story_Sleeping] {
	if !dream_init {
		dream_init = true
		alarm[1] = 200
	}
}
else {
	dream_init = false
}