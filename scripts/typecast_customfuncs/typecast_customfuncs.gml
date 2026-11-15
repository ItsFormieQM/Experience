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
function round_decimal(decimal,decimals) {
	decimal = string(decimal) 
	var ldec = 0
	var j = 0
	var startcount = false
	for (var i = 0; i <= len(ldec); i++) {
		if strat(decimal,i) == "." {
			startcount = true
		}
		if startcount {
			j++
		}
		if j >= decimals {
			if real(strat(decimal,i)) > 5 {
				decimal = string_replace(decimal,i,"0")
				decimal = real(decimals)
				decimal++
				return decimal
			}
			else if real(strat(decimal,i)) < 5 {
				decimal = string_replace(decimal,i,"5")
				decimal = real(decimal)
				return decimal
			}
			else {
				decimal = real(decimal)
				return decimal
			}
			break
		}
	}
}
function integer_floor(_str) {
	var test = real(_str) 
	return floor(test)
} 
function integer_round(_str) {
	var test = real(_str) 
	return round(test)
} 
function string_canbe_bool(_str) {
	if _str == "true" || _str == "false" {
		return true
	}
	return false
}