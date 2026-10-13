function cmd_set_obj_var(obj = noone, variable = noone, value = noone){
	if obj == noone || variable == noone || value == noone {
		return -1
	}
	obj = asset_get_index(obj)
	if obj == -1 {
		
		return -1
	}
	if string_canbe_int(value) {
		value = real(value)
	}
	if string_canbe_bool(value) {
		value = bool(value)
	}
	tst_var = variable
	tst_value = value
	with obj {
		if !variable_instance_exists(id,other.tst_var) {
			show_debug_message("error")
			break
		}
		variable_instance_set(id,other.tst_var,other.tst_value)
	}
}