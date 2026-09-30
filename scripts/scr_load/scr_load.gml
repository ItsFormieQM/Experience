function scr_load(){
	var filename = global.save_folder + "savedata.txt"
	if !file_exists(filename) {
		return -1
	}
	var file = file_text_open_read(filename)
	file_text_close(file)
	
}