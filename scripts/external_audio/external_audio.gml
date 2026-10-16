function mus_external_load(filename = noone){
	
	exit
	var mus_folder = working_directory + $"music/{filename}"
	show_debug_message(mus_folder)
	var handle = audio_create_stream(mus_folder)
	show_debug_message(handle)
	
	return handle
	
}
function mus_external_free(handle = noone) {
	exit
	if handle == noone {
		return -1
	}
	audio_stop_sound(handle)
	audio_destroy_stream(handle)
}
function mus_external_play(handle,vol=1,pitch=1) {
	exit
	mus_play(handle,true,pitch,vol)
}
function mus_is_external(mus) {
	exit
	var asset = audio_sound_get_asset(mus)
	if asset == undefined {
		return
	}
	if audio_get_name(asset) != ""{
		return false
	}
	return true
}