function scr_load_audio_external(){
	global.external_mus = []
	exit
	var handle = noone
	var mus_folder = working_directory + "music/"
	
	var first_file = file_find_first(mus_folder + "*.ogg", fa_none)
	if first_file == "" {
		file_find_close()
		return;
	}
	
	var thingy = mus_folder + first_file
	handle = audio_create_stream(thingy)
	array_push(global.external_mus,{name: filename_name(thingy), pointer: handle})
	
	while true {
		var next_file = file_find_next()
		if next_file == "" {
			break
		}
		thingy = mus_folder + next_file
		handle = audio_create_stream(thingy)
		array_push(global.external_mus,{name: filename_name(thingy), pointer: handle})
	}
	file_find_close()
	show_debug_message(global.external_mus)
}
