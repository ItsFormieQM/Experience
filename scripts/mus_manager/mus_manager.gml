function mus_play(_mus = noone, loop = true, pitch = 1, vol = 1){
	if _mus == noone {
		return -1
	}
	global.current_mus_file = _mus
	global.current_mus = audio_play_sound(_mus,90,loop,vol,0,pitch)
	show_debug_message($"MUS: {global.current_mus}")
}
///@desc Fades out the current playing music
///@param {real} Volume 
///@param {real} Frames Eases out by specified frames 
function mus_fade(frames,vol) {
	if frames <= 0 {
		return -1
	}
	var milliseconds = (frames / 60) * 1000
	audio_sound_gain(global.current_mus,vol,milliseconds)
}
function snd_fade(snd,frames,vol) {
	if frames <= 0 {
		return -1
	}
	var milliseconds = (frames / 60) * 1000
	audio_sound_gain(snd,vol,milliseconds)
}