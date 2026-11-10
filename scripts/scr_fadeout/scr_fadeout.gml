function scr_fadeout(_mus = noone,time = 1,goal = 0){
	try {
		if _mus == noone {
			return -1
		}
		audio_sound_gain(_mus,goal,time)
	}
	catch (_exception) {
		return -2
	}
}