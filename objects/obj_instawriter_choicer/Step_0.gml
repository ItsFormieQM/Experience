if global.interacted {
	instance_destroy()
	instance_destroy(obj_drawer)
	global.interacted = false
	global.choice = index
	exit
}
if global.interacted_x {
	show_debug_message("CHOICER IS INSTA")
}
if keyboard_check_pressed(vk_anykey) {
	show_debug_message(choice_pos_map)
}
if stopit {
	lowest = 0
	highest = array_length(choice_pos_map) - 1
	if global.w_press {
		if index != lowest {
			index = lowest
		}
		else {
			index = highest
		}
	}
	else if global.s_press {
		if index != highest {
			index = highest
		}
		else {
			index = lowest
		}
	}
	else if global.a_press {
		if index != lowest && index != highest{
			index--
			if index <= -1 {
				index += 2
			}
		}
		else if index == highest {
			index -= 2
		}
		else {
			index++
		}
	}
	else if global.d_press {
		if index != lowest && index != highest {
			index++
			if index > highest {
				index -= 2
			}
		}
		else if index == highest{
			index--
		}
		else {
			index += 2
		}
	}
	
	myx = choice_pos_map[index].x_pos
	myy = choice_pos_map[index].y_pos
	
}
