function mus_play(_mus = noone, loop = true, pitch = 1, vol = 1){
	
	if _mus == noone {
		return -1
	}
	global.prev_mus = global.current_mus_file
	global.current_mus_file = _mus
	global.current_mus = audio_play_sound(_mus,90,loop,vol,0,pitch)
	show_debug_message($"MUS: {audio_get_name(global.current_mus_file)}")
}
function mus_free() {
	audio_stop_sound(global.current_mus)
	global.prev_mus = global.current_mus_file
	global.current_mus = none
	global.current_mus_file = none
	
}
///@desc Sets the track position for the current music to the input. Set relative to true when offsetting from the current track position, else leave it false or default.
///@param {real} pos The position IN SECONDS.
function mus_setpos(pos,relative=false) {
	if !relative {
		audio_sound_set_track_position(global.current_mus,pos)
		return
	}
	var tp = audio_sound_get_track_position(global.current_mus)
	audio_sound_set_track_position(global.current_mus,tp+pos)
}
///@desc Fades out the current playing music
///@param {real} Frames Eases out by specified frames 
///@param {real} Volume Target volume
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
///@desc Please do not add arguments, it's still added for compatibility reasons. It automatically targets the global variable 'current_mus'. Also this function either pauses or resumes the music.
function mus_toggle(compatbutplsnoargshere=none) {
	if audio_is_playing(global.current_mus) {
		audio_pause_sound(global.current_mus)
		return
	}
	audio_resume_sound(global.current_mus)
}
function new_mus_play(_mus,vol=1,pitch=1,offset=0) {
	
	var handle = audio_play_sound(_mus,90,true,vol,offset,pitch)
	return {mus_name: audio_get_name(_mus),mus: handle}
}
function new_mus_set_loop(mus_struct,_bool) {
	audio_sound_loop(mus_struct.mus,_bool)
}
function new_mus_free(mus_struct) {
	audio_stop_sound(mus_struct.mus)
	
}
function new_mus_fade(mus_struct,frames,targetvol) {
	if frames <= 0 {
		frames = 1
	}
	var milliseconds = (frames / 60) * 1000
	audio_sound_gain(mus_struct.mus,targetvol,milliseconds)
}
///@desc Pause (true) or Resume (false)
function new_mus_toggle(mus_struct,state) {
	if state == true {
		audio_pause_sound(mus_struct.mus)
	}
	else if state == false {
		audio_resume_sound(mus_struct.mus)
	}
}