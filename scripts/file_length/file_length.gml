function file_length(filename){
	var file = file_text_open_read(filename)
	var i = 0
	if file == -1 {
		return undefined
	}
	while !file_text_eof(file) {
		file_text_readln(file)
		i++
	}
	file_text_close(file)
	return i
}