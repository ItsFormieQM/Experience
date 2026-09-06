
if global.current_mus_file != music && !ran {
	scr_fadeout(global.current_mus,100,0)
	if !fade_in {
		mus_play(music,true,1,volume)
	}
	else {
		mus_play(music,true,1,0)
		audio_sound_gain(global.current_mus,volume,fade_amount)
	}
	ran = true
}

visible = false