if !global.cutscene {
	show_debug_message("cutscener died")
	global.canmove = true
	instance_destroy()
	exit
}
// FUNCTIONS HERE WILL BE LOOPED
if len(functions) > 0 {
	for (i = 0; i < len(functions); i++) {
		if is_callable(functions[i].func) {
			method_call(functions[i].func)
		}
		else {
			show_error($"Method, {functions[i].func} cannot be called!",true)
		}
	}
}	