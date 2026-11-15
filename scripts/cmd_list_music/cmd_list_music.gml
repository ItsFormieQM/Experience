function cmd_list_music(){
	assets = asset_get_ids(asset_sound)
	var mus_files = []
	for (var i = 0; i < array_length(assets); i++) {
		assets[i] = audio_get_name(assets[i])
	}
	for (var i = 0; i < array_length(assets); i++) {
		if string_starts_with(assets[i], "mus_") {
			array_push(mus_files,assets[i])
			
		}
	}
	sdm("MUSIC LIST:")
	
	for (var i = 0; i < array_length(mus_files); i++) {
		sdm(mus_files[i])
	}
}