ran = false
if room == global.start_room {
	if global.flag[Flag.Story_IntroStart] {
		instance_create(0,0,obj_cutscener_rdhd,{spawned: true})
		global.flag[Flag.Story_IntroStart] = false
	}
}