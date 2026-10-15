
if global.prev_mus != noone && global.prev_mus != pointer_null {
	if audio_exists(global.prev_mus)
		if audio_sound_get_gain(global.prev_mus) <= 0 {
			audio_stop_sound(global.prev_mus)
			if mus_is_external(global.prev_mus) == false {
				mus_external_free(global.prev_mus)
			}
		}
}