function mus_play(_mus = noone, loop = true, pitch = 1, vol = 1){
	if _mus == noone {
		return -1
	}
	global.current_mus_file = _mus
	global.current_mus = audio_play_sound(_mus,90,loop,vol,0,pitch)
	show_debug_message($"MUS: {global.current_mus}")
}