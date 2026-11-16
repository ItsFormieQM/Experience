function cmd_dialogue_test(text = ""){
	
	global.msg[0] = text
	for (var i = 0; i < len(global.msg);i++) {
		//for (var i = 0; i < array_length(global.msg); i++) {
		global.xx_offset[i] = 68
		global.yy_offset[i] = 960 / 2 + 85
		
	}
	instance_create(0,0,obj_drawer)
}