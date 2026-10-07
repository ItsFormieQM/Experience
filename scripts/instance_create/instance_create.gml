function instance_create(_x,_y,_obj,vars = noone, high_priority = false,console = false){
	if console {
		var handle = instance_create_layer(_x,_y,"Instances",_obj)
		return handle
	}
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