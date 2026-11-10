if ran = true {
	image_xscale += 0.05
	if image_xscale >= 1.5 {
		ran = false
		alarm[0] = 30
	}
	
}	
if keyboard_check_pressed(ord("D")) {
	ran = true
	
}
if retract {
	image_xscale -= 0.05
	if image_xscale <= 0 {
		instance_destroy()
	}
}	