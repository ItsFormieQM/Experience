active = false
history_commands = []
i = 0
first_time = true
setcmd = function() {
	if first_time {
		first_time = false
		if array_length(history_commands) >= 1 {
			i = array_length(history_commands) - 1
		}
	}
	keyboard_string = history_commands[i]
}
history_file = "cmd_history.txt"
show_debug_message($"FILE LENGTH FOR {history_file}: {file_length(history_file)}")
if file_exists(history_file) {
	history_commands = []
	var file = file_text_open_read(history_file)
	for (var j = 1; j <= file_length(history_file); j++) {
		var cmd = file_text_read_string(file)
		file_text_readln(file)
		show_debug_message(cmd)
		history_commands[j - 1] = cmd
	}
	file_text_close(file)
}