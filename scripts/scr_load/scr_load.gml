function scr_load(){
	var filename = global.save_folder + "savedata.txt"
	
	if !file_exists(filename) {
		return -1
	}
	if !layer_exists("TECHNICAL") {
		layer_create(-999, "TECHNICAL")
	}
	if !instance_exists(obj_mainchara) {
		instance_create(-666,-666,obj_mainchara)
	}
	
	var file = file_text_open_read(filename)
	var rm = file_text_read_real(file)
	file_text_readln(file)
	
	obj_mainchara.goto_x = file_text_read_real(file)
	file_text_readln(file)
	
	obj_mainchara.goto_y = file_text_read_real(file)
	file_text_readln(file)
	
	file_text_readln(file)
		
	global.time = file_text_read_real(file)
	global.oldtime = global.time
	file_text_readln(file)
		
	global.lv = file_text_read_real(file)
	file_text_readln(file)
	
	var wm_slot = file_text_read_real(file)
	file_text_readln(file)
	
	file_text_close(file)
	
	
	instance_create(obj_mainchara.x,obj_mainchara.y,obj_warp, {target_marker_slot: wm_slot, target_room: rm, is_onload: true})
}
