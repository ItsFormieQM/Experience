if active {
	if keyboard_check(vk_control) && keyboard_check(ord("V")) {
		if clipboard_has_text() {
			text = clipboard_get_text()
		}
	}
	
	global.canmove = false
	if keyboard_check_pressed(vk_enter) {
		text = keyboard_string
		text = string(text)
		if !string_ends_with(text,"/E") {
			text += "/E"
		}
		file = file_text_open_write(json)
		
		file_text_write_string(file,text)
		file_text_writeln(file)
		file_text_close(file)
		var index = 0
		global.msg = []
		global.msg[index] = text
		global.xx_offset[index] = 68
		global.yy_offset[index] = 960 / 2 + 85
		instance_create(0,0,obj_drawer)
		active = false
	}
}
else {
	global.canmove = true
	instance_destroy()
}
if instance_exists(obj_console) {
	with obj_console {
		if active {
			other.active = false
		}
	}
}