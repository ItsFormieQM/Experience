function cmd_mus_play(mus = noone,vol = 1,pitch = 1){
	if mus == "none" {
		audio_stop_all()
		return 0
	}
	mus = asset_get_index(mus)
	if mus != noone {
		if audio_exists(mus) {
			audio_stop_all()
			mus_play(mus, true,pitch,vol)
		}
		return 0
	}
	return -1
}