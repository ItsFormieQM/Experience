if i_exists(obj_testnpc_enemy_overworld) {
	var tnpc = obj_testnpc_enemy_overworld
	sdm("DISTANCE: " + string(point_distance(x,y,tnpc.x,tnpc.y)))
}
instance_destroy()