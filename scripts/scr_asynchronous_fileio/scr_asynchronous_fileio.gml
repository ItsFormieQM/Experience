function scr_save_async(savepoint_id){
	var filename = global.save_folder + "savedata.txt"
	sdm(filename)
	// newline
	var nln = "\r\n"
	var savelines = ""
	
	savelines += string(room) + nln
	savelines += string(player.x) + nln
	savelines += string(player.y) + nln
	savelines += scr_get_custom_roomname(room) + nln
	savelines += string(global.time) + nln
	savelines += string(global.lv) + nln
	savelines += string(savepoint_id) + nln
	for (var i = 0; i < len(global.maxhp); i++) {
		savelines += string(global.hp[i]) + nln
		savelines += string(global.maxhp[i]) + nln
	}
	savelines += "end of hp" + nln
	buffsave = buffer_create(string_byte_length(savelines), buffer_fixed,1)
	buffer_write(buffsave,buffer_text,savelines)
	sdm(savelines)
	var flagln = ""
	for (var i = 0; i < Flag.COUNT; i++) {
		if !is_bool(global.flag[i]) {
			if i == 11{
				flagln += global.flags_name[i] + ": false" + nln
			} 
			else {
				flagln += global.flags_name[i] + ": " + string(global.flag[i]) + nln
			}
		} 
		else {
			flagln += global.flags_name[i] + ": " + (global.flag[i] ? "true" : "false") + nln
		}
	}
	buffsaveflag = buffer_create(string_byte_length(flagln), buffer_fixed,1)
	buffer_write(buffsaveflag,buffer_text,flagln)
	var savefile = global.save_folder + "savedata.txt"
	var flagfile = global.save_folder + "flags.json"
	buffer_save_async(buffsave,savefile,0,buffer_get_size(buffsave))
	buffer_save_async(buffsaveflag,flagfile,0,buffer_get_size(buffsaveflag))
	endsavebuff = buffer_async_group_end()
	return
	//if file_exists(filename) {
	//	file_delete(filename)
	//}
	//if !instance_exists(obj_mainchara) {
	//	return -1
	//}
	//var file = file_text_open_write(filename)
	
	//// player room line 1
	//file_text_write_real(file,room)
	//file_text_writeln(file)
		
	//// player x line 2
	//file_text_write_real(file,obj_mainchara.x)
	//file_text_writeln(file)
	
	//// player y line 3
	//file_text_write_real(file,obj_mainchara.y)
	//file_text_writeln(file)
	
	//// custom room name, ion think ts is unused btw line 4
	//file_text_write_string(file,scr_get_custom_roomname(room))
	//file_text_writeln(file)
	
	//// time in frames line 5
	//file_text_write_real(file,global.time)
	//file_text_writeln(file)
	
	//// lv line 6
	//file_text_write_real(file,global.lv)
	//file_text_writeln(file)
	
	//// slot number of the nearest warp marker line 7
	//file_text_write_real(file,savepoint_id)
	//file_text_writeln(file)
	
	//// lines idk
	//for (var i = 0; i < len(global.hp) && i < len(global.maxhp); i++) {
	//	file_text_write_real(file,global.hp[i])
	//	file_text_writeln(file)
	//	file_text_write_real(file,global.maxhp[i])
	//	file_text_writeln(file)
	//}
	//file_text_write_string(file,"end of hp")
	//file_text_writeln(file)
	//file_text_close(file)
	//// FLAGS SAVING
	//filename = global.save_folder + "flags.json"
	//if file_exists(filename) {
	//	file_delete(filename)
	//}
	//file = file_text_open_write(filename)
	//for (var i = 0; i < Flag.COUNT; i++) {
	//	if !is_bool(global.flag[i]) {
	//		if i == 11 {
	//			file_text_write_string(file,global.flags_name[i] + ": "+ string("false"))
	//			file_text_writeln(file)
	//		}
	//		else {
	//			file_text_write_string(file,global.flags_name[i] + ": "+ string(global.flag[i]))
	//			file_text_writeln(file)
	//		}
	//	}
	//	else {
	//		file_text_write_string(file,global.flags_name[i] + ": "+ string(global.flag[i] ? "true":"false"))
	//		file_text_writeln(file)
	//	}
	//}
	//file_text_close(file)
}