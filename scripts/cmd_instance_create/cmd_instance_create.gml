function cmd_instance_create(obj = noone, _x = 0, _y = 0, vars = {}){
	if string_canbe_int(_x) && string_canbe_int(_y) {
		_x = real(_x)
		_y = real(_y)
	}
	if obj == noone {
		return -1
	}
	obj = asset_get_index(obj)
	if obj == -1 {
		return -1
	}
	var handle = instance_create(_x,_y,obj,vars,false,true)
	show_debug_message("INSTANCE HANDLE: " + string(handle))
	return 0
}