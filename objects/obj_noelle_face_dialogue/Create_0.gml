image_xscale = 2
image_yscale = 2
image_speed = 0
normal_anim = true
image_index = emotion
noanim = false
if instance_exists(obj_drawer) { 
	draw_state = obj_drawer.stop_draw
	if !draw_state {
		if emotion == 0 {
			normal_anim = true
			image_speed = 7
		}
		else {
			noanim = true
			normal_anim = false
			image_speed = 0
		}
	}
}