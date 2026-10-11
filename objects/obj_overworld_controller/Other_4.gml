ran = false
if room == global.start_room {
	if global.flag[Flag.Story_IntroStart] {
		instance_create(0,0,obj_cutscener_rdhd,{spawned: true})
		global.flag[Flag.Story_IntroStart] = false
	}
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