function scr_save(){
	var filename = global.save_folder + "savedata.txt"
	show_debug_message("")
	if file_exists(filename) {
		file_delete(filename)
	}
	if !instance_exists(obj_mainchara) {
		return -1
	}
	var file = file_text_open_write(filename)
	
	// player room line 1
	file_text_write_real(file,room)
	file_text_writeln(file)
		
	// player x line 2
	file_text_write_real(file,obj_mainchara.x)
	file_text_writeln(file)
	
	// player y line 3
	file_text_write_real(file,obj_mainchara.y)
	file_text_writeln(file)
	
	// custom room, unused line 4
	file_text_write_string(file,scr_get_custom_roomname(room))
	file_text_writeln(file)
	
	// time in frames line 5
	file_text_write_real(file,global.time)
	file_text_writeln(file)
	
	// lv line 6
	file_text_write_real(file,global.lv)
	file_text_writeln(file)
	
	// slot number of the nearest warp marker
	var nearest_wm = instance_nearest(obj_mainchara.x,obj_mainchara.y,obj_warp_marker)
	file_text_write_real(file,nearest_wm.slot)
	file_text_close(file)
}