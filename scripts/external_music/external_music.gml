///@desc Loads an audio file in .ogg format into the game.
///@param {String} filename The '.ogg' format is appended if it is not already. The name of the audio file.
///@param {real} identifier Use the enum 'Audio_Identifiers' to specify a tag. Default is Normal.
function external_load_mus(filename, identifier=Audio_Identifiers.Normal){
	if !string_ends_with(filename,".ogg") {
		filename += ".ogg"
	}
	filename = working_directory + $"music/{filename}"
	
	if !file_exists(filename) {
		return -1
	}
	
	var _handle = audio_create_stream(filename)
	array_push(global.music,{mus_name: filename_name(filename), handle: _handle, tag: identifier})
	show_debug_message($"Loaded audio filename {filename_name(filename)}")
	return _handle
}
function external_load_mus_all() {
	var dir = working_directory + "music/*.ogg"
	var filename = file_find_first(dir,fa_none)
	while filename != "" {
		show_debug_message(filename)
		external_load_mus(filename)
		filename = file_find_next()
	}
	file_find_close()
}
function external_unload_mus(handle) {
	
	for (var i = 0; i < array_length(global.music); i++) {
		if handle == global.music[i].handle {
			array_delete(global.music,i,0)
			show_debug_message($"music handle {handle} has been unloaded")
			var stfugamemaker = audio_destroy_stream(handle)
			break
		}
	}
}
function external_play_mus(handle) {
	mus_play(handle)
}

enum Audio_Identifiers {
	Normal,
	Battle
}