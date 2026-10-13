function snd_play(_snd,_vol=1,pitch=1,loop = false){
	handle = audio_play_sound(_snd,90,loop,_vol,0,pitch)
	return handle
}