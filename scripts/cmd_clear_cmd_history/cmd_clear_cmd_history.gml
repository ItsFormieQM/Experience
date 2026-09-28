function cmd_clear_cmd_history(){
	with obj_console {
		history_commands = []
		return 0
	}
}