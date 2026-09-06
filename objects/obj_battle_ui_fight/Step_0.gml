if instance_exists(obj_battle_controller) {
	var max_slots = 5
	if global.d_press {
		index++
		snd_play(snd_menu_move)
	}
	else if global.a_press {
		index--
		snd_play(snd_menu_move)
	}
	if index > max_slots {
		index = 1
	}
	if index <= 0 {
		index = max_slots
	}
	image_index = index
	if global.interacted && !chose{
		if index == 1 {
			fight = true
			chose = true
		}
		else if index == 2 {
			
		}
		snd_play(snd_select,1.2)
	}
	else if global.interacted_x {
		chose = false
		fight = false
		act = false
	}
}