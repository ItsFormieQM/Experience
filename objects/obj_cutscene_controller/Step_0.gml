if !global.cutscene {
	show_debug_message("cutscener died")
	global.canmove = true
	instance_destroy()
	exit
}