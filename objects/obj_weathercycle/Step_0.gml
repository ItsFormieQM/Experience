if start {
	if countdown {
		weatherlen--
		global.flag[Flag.Game_WeatherTimer] = weatherlen
		if weatherlen <= 0 {
			alarm[0] = 1
		}
	}
	if !played {
		if weather == Weather.Raining {
			
			snd_play(mus_rain,0.9,1,true)
		}
		
		played = true
	}
}