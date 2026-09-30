function scr_get_savefile_values(){
	var filename = global.save_folder + "savedata.txt"
	if !file_exists(filename) {
		return [
			0,//rm,
			0,
			0,
			scr_get_custom_roomname(room),
			0,
			global.lv,
			0
		]
	}
	var file = file_text_open_read(filename)
	
	var rm = file_text_read_real(file)
	file_text_readln(file)
	
	var _x = file_text_read_real(file)
	file_text_readln(file)
	
	var _y = file_text_read_real(file)
	file_text_readln(file)
	
	var custom_rm_name = file_text_read_string(file)
	file_text_readln(file)
		
	var oldtime = file_text_read_real(file)
	file_text_readln(file)
		
	var oldlv = file_text_read_real(file)
	file_text_readln(file)
	
	var wm_slot = file_text_read_real(file)
	file_text_readln(file)
	
	file_text_close(file)
	
	return [
		rm,
		_x,
		_y,
		custom_rm_name,
		oldtime,
		oldlv,
		wm_slot
	]
}