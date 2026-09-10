if obj_battle_controller.attacked {
	
	if image_index >= image_number - 1 {
		image_speed = 0
		image_index = 0
		ran = true
	}	
	else if !ran {
		image_speed = 1 
	}
}	