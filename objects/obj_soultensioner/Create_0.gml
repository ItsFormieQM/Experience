if instance_number(object_index) >= 2 {
	i_destroy()
}
timer = 0
add = true
add_tpgr = function(amnt) {
	if add {
		global.tp += amnt
	}
	if image_alpha > 0.9 {
		if !audio_is_playing(snd_graze) {
			snd_play(snd_graze)
		}
	}
	timer = 30
}
image_alpha = 0