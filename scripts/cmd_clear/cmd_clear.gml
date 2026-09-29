function cmd_clear(){
	
	with obj_console {
		history_commands = []
		if file_exists(history_file) {
			file_delete(history_file)
		}
	}
	
	return 0
}