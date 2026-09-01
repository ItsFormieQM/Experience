function string_canbe_int(_str){
	try {
		var test = real(_str)
		return true
	}
	catch (_exception) {
		return false
	}
}