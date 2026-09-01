if place_meeting(x,y,obj_mainchara) {
	if global.interacted && can_move && !instance_exists(obj_drawer){
		scr_get_txt(dialogue_type,true)
		instance_create(0,0,obj_drawer)
		obj_mainchara.image_index = 0
		can_move = false
		show_debug_message("ran???/")
		obj_dialogue.visible = true
	}
	if can_move && !instance_exists(obj_drawer) {
		obj_dialogue.visible = false
		
	}
	
}	
global.interacted = false
