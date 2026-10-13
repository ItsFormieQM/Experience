if image_index >= image_number - 1 {
	image_speed = 0
}
if fadeout {
	image_speed = -1
	if image_index <= 0 {
		image_speed = 0
		fadeout = false
		instance_destroy()
	}
}
if image_alpha <= 0 {
	instance_destroy()
}
// Top
