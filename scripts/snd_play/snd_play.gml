function snd_play(_snd,_vol=1,pitch=1){
	handle = audio_play_sound(_snd,90,false,_vol,0,pitch)
	return handle
}