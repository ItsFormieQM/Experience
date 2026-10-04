draw_state = obj_drawer.stop_draw
if draw_state {
	normal_anim = false
}
if normal_anim {
	if image_index >= 1.99 {
		image_index = 0
	}
}
else if !noanim && !normal_anim{
	if image_index >= 1.99 {
		image_index = 0
		image_speed = 0
	}
}