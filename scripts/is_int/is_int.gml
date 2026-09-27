function string_canbe_int(_str){
    _str = string(_str)

    if _str == "" {
		return false
	}
    
	if string_length(string_digits(_str)) == string_length(_str) {
		return true
	}
    return false
}
function integer_floor(_str) {
	var test = real(_str) 
	return floor(test)
} 
function integer_round(_str) {
	var test = real(_str) 
	return round(test)
} 