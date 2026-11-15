drag = keyboard_check(vk_control) 
if drag {
	if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,id) {
		touched = true
	}
	if touched {
		x = mouse_x
		y = mouse_y
	}
		
		
		
}
else {
	touched = false
}
