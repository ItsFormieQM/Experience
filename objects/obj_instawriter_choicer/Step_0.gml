if global.interacted {
	instance_destroy()
	instance_destroy(obj_drawer)
	exit
}
if global.interacted_x {
	show_debug_message("CHOICER IS INSTA")
}