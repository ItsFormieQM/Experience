function cmd_save(){
	if !instance_exists(obj_save_menu) {
		instance_create(0,0,obj_save_menu)
	}
	with obj_save_menu {
		visible = true
	}
	return 0
}