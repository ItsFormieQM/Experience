if async_load[? "id"] == endsavebuff {
	if async_load[?"status"] == true {
		with obj_save_menu {
			successsave()
		}
	}
	else {
		show_error("issue",0)
	}
	instance_destroy()
}