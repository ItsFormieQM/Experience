if global.a_press {
	index-- 
	if index <= -1 {
		index = array_length(positionmap) - 1
	}
	show_debug_message(index)
	show_debug_message(positionmap)
}
if global.d_press {
	index++ 
	if index >= array_length(positionmap) {
		index = 0
	}
	show_debug_message(index)
	show_debug_message(positionmap)
}

if global.interacted {
	global.choice = index
	show_debug_message(index)
	
	instance_destroy()
}
_x = positionmap[index].xpos
_y = positionmap[index].ypos
