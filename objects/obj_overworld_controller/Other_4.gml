ran = false
subchoice = -1
layer_depth("Background",60100)
if room == global.start_room {
	if global.flag[Flag.Story_IntroStart] {
		instance_create(0,0,obj_cutscener_rdhd,{spawned: true})
		global.flag[Flag.Story_IntroStart] = false
	}
	
}
if room == room_deped_hallway_down {
	if !global.flag[Flag.Story_IntroKrisHouse_Cutscene] {
		for (var i = 0; i < array_length(global.warper_slot); i++) {
			if global.warper_slot[i].slot == 1 {
				with global.warper_slot[i]._id {
					y = 465
				}
				break
			}
			
		}
		for (var i = 0; i < array_length(global.warper_slot); i++) {
			if global.warper_slot[i].slot == 2 {
				
				with global.warper_slot[i]._id {
					instance_destroy()
				}
				break
			}
			
		}
	}
}
if room == room_krisroom_house {
	
}
if room == room_black {
	if global.prev_room == room_deped_hallway_down {
		instance_create(0,0,obj_cutscener_krisintro_gohome,{spawned: true})
	}
}
if room == room_kris_house_entry {
	if global.flag[Flag.Story_IntroKrisHouse_Cutscene] {
		instance_create(0,0,obj_cutscener_krishouse_intro,{spawned: true})
		global.flag[Flag.Story_IntroKrisHouse_Cutscene] = false
	}
}
if !scr_in_school(room) {
	global.flag[Flag.On_School] = false
	if !global.flag[Flag.Story_IntroStart] {
		global.flag[Flag.Story_LeftIntroRoom] = true
	}
}

else {
	global.flag[Flag.On_School] = true
}
if global.prev_room == room_battle {
	for (var i = 0; i < array_length(global.rooms); i++) {
		if room == global.rooms[i].room_index {
			var persistency = global.rooms[i].persistence
			if persistency == false {
				room_persistent = false
			}
			break
		}
	}
	obj_mainchara.visible = true
}