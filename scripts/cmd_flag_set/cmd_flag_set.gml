function cmd_flag_set(index, value){
	if !string_canbe_int(index) {
		return -1
	}
	else {
		index = real(index)
	}
	if string_canbe_bool(value) {
		if value == "true" {
			value = true
		}
		else {
			value = false
		}
	}
	
	if string_canbe_int(value) {
		value = real(value)
	}
	global.flag[index] = value
	return 0
}