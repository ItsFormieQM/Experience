ran = false
if room == global.start_room {
	if global.flag[Flag.Story_IntroStart] {
		instance_create(0,0,obj_cutscener_rdhd,{spawned: true})
		global.flag[Flag.Story_IntroStart] = false
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