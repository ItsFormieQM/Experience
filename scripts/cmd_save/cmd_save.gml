function cmd_save(file = 1){
	if !string_canbe_int(file) {
		return -1
	}
	file = integer_floor(real(file))
	global.save_folder = game_save_id + $"save{file}/"
	if !instance_exists(obj_save_menu) {
		instance_create(0,0,obj_save_menu)
	}
	with obj_save_menu {
		visible = true
	}
	return 0
}