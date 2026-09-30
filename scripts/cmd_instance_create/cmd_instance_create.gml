function cmd_instance_create(obj = noone, _x = 0, _y = 0, vars = {}){
	if obj == noone {
		return -1
	}
	obj = asset_get_index(obj)
	if obj == -1 {
		return -1
	}
	instance_create(_x,_y,obj,vars)
	return 0
}