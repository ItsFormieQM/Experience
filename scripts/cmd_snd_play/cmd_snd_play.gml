function cmd_snd_play(snd = noone, vol = 1, pitch = 1){
	snd = asset_get_index(snd)
	if snd != noone {
		if audio_exists(snd) {
			snd_play(snd,vol,pitch)	
		}	
		return 0
	}
	return -1
}