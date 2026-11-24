function cmd_instance_destroy(obj){
	obj = asset_get_index(obj) 
	if obj != -1 { 
		instance_destroy(obj)
	}
}