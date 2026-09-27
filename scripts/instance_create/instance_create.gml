function instance_create(_x,_y,_obj,vars = noone, high_priority = false){
	if !high_priority {
		if vars != noone {
			return instance_create_depth(_x,_y,depth,_obj,vars)
		}
		return instance_create_depth(_x,_y,depth,_obj)
	}
	else {
		if vars != noone {
			return instance_create_depth(_x,_y,depth - 1,_obj,vars)
		}
		return instance_create_depth(_x,_y,depth - 1,_obj)
	}
}