function file_create(filename){
	if file_exists(filename) {
		file_delete(filename)
	}
	var file = file_text_open_write(filename)
	file_text_close(file)
	return 0
}