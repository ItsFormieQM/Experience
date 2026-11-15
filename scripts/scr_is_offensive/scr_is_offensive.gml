function scr_is_offensive(_string = noone){
	if _string == noone {
		return -1
	}
	_string = string_lower(_string)
	var offensive_array = [
		"deleted because i might get flagged by my school son"
	]
	for (var i = 0; i < array_length(offensive_array); i++) {
		if string_pos(offensive_array[i],_string) > 0 {
			return true
		}
	}
	return false
}