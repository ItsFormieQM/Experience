if keyboard_check_pressed(ord("Q")) {
	time_source_reconfigure(time_source_global, 1, time_source_units_frames, function() {}, [], -1)
	cmd_restart()
}

if room == room_deped_hallway_down {
	if !school_day2 && global.flag[Flag.Story_DaysPassed] >= 2 {
		school_day2 = true
		instance_create(0,0,obj_cutscener_day2_school)
	}
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
if room == room_kris_house_entry {
	
	if global.flag[Flag.Story_DaysPassed] >= 2 && global.flag[Flag.Story_DayState] < DayState.Evening {
		if !deletelazy {
			for (var i = 0; i < len(global.interactable_controllerids); i++) {
				if global.interactable_controllerids[i].slot == 1 {
					if i_exists(global.interactable_controllerids[i]._id) {
						with global.interactable_controllerids[i]._id {
							instance_destroy()
							other.deletelazy = true
							
							for (i = 0; i < len(global.warper_slot); i++) {
								if global.warper_slot[i].slot == 1 {
									with global.warper_slot[i]._id {
										y += 60
									}
									break
								}
							}
							break
						}
					}
				}
			}
		}
	}
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