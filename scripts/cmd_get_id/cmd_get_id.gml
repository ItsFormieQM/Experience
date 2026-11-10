function cmd_get_id(){
	if !instance_exists(obj_mainchara) {
		return -1
	}
	nearest_inst = noone
	with obj_mainchara {
		other.nearest_inst = instance_place(x,y,all)
	}
	
	if nearest_inst == noone {
		sdm("No instances were found!")
		return 0
	}
	sdm($"Instance object name: {object_get_name(nearest_inst.object_index)}")
	sdm($"Instance ID: {nearest_inst.id}")
	return 0
}