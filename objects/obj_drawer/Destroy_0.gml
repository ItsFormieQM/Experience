if room == room_gaster {
	plot = 3
	obj_plot_controller.ran = true
	
}
if instance_exists(obj_dialogue) {
	if !instance_exists(obj_choicer) {
		with obj_dialogue {
			visible = true
		}
	}
	else {
		with obj_choicer {
			
		}
	}
}
if global.facechoice != noone {
	if instance_exists(global.facechoice) {
		instance_destroy(global.facechoice)
	}
}
plot++
if !is_choicer {
	global.canmove = true
}
