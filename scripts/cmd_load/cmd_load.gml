function cmd_load(file = 1){
	if !string_canbe_int(file) {
		return -1
	}
	file = integer_floor(real(file))
	var max_save_files = 5
	if file > max_save_files {
		file = max_save_files
	}
	if file <= 0 {
		file = 1
	}
	
	global.save_folder = game_save_id + $"save{file}/"
	scr_load()
	return 0
}