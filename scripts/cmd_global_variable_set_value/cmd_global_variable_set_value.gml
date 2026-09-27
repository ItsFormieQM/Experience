function cmd_global_variable_set_value(variable, value){
	if variable_global_exists(variable) {
		variable_global_set(variable,value)
		return 0
	}
	return -1
}