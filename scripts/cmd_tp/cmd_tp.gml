function cmd_tp(_x,_y){
	if !string_canbe_int(_x) || !string_canbe_int(_y) {
		return -1
	}
	if !instance_exists(obj_mainchara) {
		return -1
	}
	_x = real(_x)
	_y = real(_y)
	obj_mainchara.x = _x
	obj_mainchara.y = _y
}