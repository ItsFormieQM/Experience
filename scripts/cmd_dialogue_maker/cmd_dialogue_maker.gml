function cmd_dialogue_maker(){
	instance_destroy(obj_dialogue_maker)
	if !instance_exists(obj_dialogue_maker) {
		instance_create(0,0,obj_dialogue_maker)
	}
	with obj_dialogue_maker {
		active = !active
	}
	keyboard_string = ""
	return 0
}