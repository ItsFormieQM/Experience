if room == room_gaster {
	plot = 3
	obj_plot_controller.ran = true
	
}
if instance_exists(obj_dialogue) {
	with obj_dialogue {
		visible = true
	}
}
if global.facechoice != noone {
	if instance_exists(global.facechoice) {
		instance_destroy(global.facechoice)
	}
}
plot++
global.canmove = true