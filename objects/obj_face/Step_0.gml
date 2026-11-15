draw_state = obj_drawer.stop_snd
halt_state = obj_drawer.halt
if draw_state {
	normal_anim = false
}
else {
	normal_anim = true
}
if !halt_state && normal_anim {
	image_speed = 7
}
