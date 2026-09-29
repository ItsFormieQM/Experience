function scr_save(){
	var filename = global.save_folder + "savedata.txt"
	show_debug_message("")
	if file_exists(filename) {
		file_delete(filename)
	}
	var file = file_text_open_write(filename)
	// player x
	file_text_write_real(file,obj_mainchara.x)
	file_text_writeln(file)
	
	// player y
	file_text_write_real(file,obj_mainchara.y)
	file_text_writeln(file)
	
	
	with obj_mainchara {
		// player room
		file_text_write_real(file,room)
		file_text_writeln(file)
		
		// custom proper room name
		file_text_write_string(file,scr_get_custom_roomname(room))
		file_text_writeln(file)
	}
	
	
	file_text_close(file)
}