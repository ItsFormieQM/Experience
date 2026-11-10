function cmd_global_set(variable, value){
	if variable_global_exists(variable) {
		if string_canbe_int(value) {
			value = real(value)
		}
		else if string_canbe_bool(value) {
			value = bool(value)
		}
		variable_global_set(variable,value)
		return 0
	}
	return -1
}