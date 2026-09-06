if room == room_gaster {
	plot = 3
	obj_plot_controller.ran = true
	
}
if instance_exists(obj_dialogue) {
	with obj_dialogue {
		visible = true
	}
}
plot++
global.canmove = true