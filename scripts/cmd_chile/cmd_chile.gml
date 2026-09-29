function cmd_chile(){
	if !instance_exists(obj_mainchara) {
		return -1
	}
	with obj_mainchara {
		image_xscale = 0.1
		
	}
	return 0
}