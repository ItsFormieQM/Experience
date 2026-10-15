if global.interacted {
	instance_destroy()
	instance_destroy(obj_drawer)
	global.interacted = false
	exit
}
if global.interacted_x {
	show_debug_message("CHOICER IS INSTA")
}
