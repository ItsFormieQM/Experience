
file_delete(history_file)
file_create(history_file)
var file = file_text_open_write(history_file)
for (var i = 0; i < array_length(history_commands); i++) {
	file_text_write_string(file,history_commands[i])
	file_text_writeln(file)
}
file_text_close(file)