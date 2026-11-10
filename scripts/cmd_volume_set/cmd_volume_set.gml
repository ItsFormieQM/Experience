function cmd_volume_set(volume){
	if string_canbe_int(volume) {
		if real(volume) <= -1 {
			return -1
		}
	}
	else {
		return -1
	}
	volume = real(volume)
	audio_master_gain(volume)
	return 0
}