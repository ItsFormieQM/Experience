function cmd_create_dialogue(){
	if !instance_exists(obj_dialogue_maker) {
		instance_create(0,0,obj_dialogue_maker)
	}
	with obj_dialogue_maker {
		active = !active
	}
	keyboard_string = ""
	return 0
}