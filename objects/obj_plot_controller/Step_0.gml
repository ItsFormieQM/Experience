if room == room_gaster {
	if instance_exists(obj_drawer) && obj_drawer.plot >= 3 {
		ran = true
	}	
}
if instance_exists(obj_drawer) {
	plot_of_drawer = obj_drawer.plot	
}	
else {
	plot_of_drawer = 0
}
if keyboard_check(ord("G")) {
	game_set_speed(60 * 100,gamespeed_fps)
}
else {
	game_set_speed(60, gamespeed_fps)
}
if ran {
	if room == room_gaster{
		if plot == 0 {
			show_debug_message("ran")
			alarm[0] = 20
			ran = false
		}
		else if plot == 1 {
			if !instance_exists(obj_drawer) {
				scr_get_txt("gaster_start_2")
				instance_create(0,0,obj_drawer)
				show_debug_message("RAN")
			}
			plot = 2
		}
		else if plot == 2 {
			if !instance_exists(obj_drawer) && plot == 2{
				alarm[0] = 20
				plot = 3
			}
			
		}
		else if plot == 4 {
			if fadeout_heart {
				obj_heart.image_alpha -= 0.005
				show_debug_message("RAN")
				if obj_heart.image_alpha <= 0 {
					plot = 5
					alarm[0] = 20
				}
			}
		}
	}
}
if room == room_story {
	if !ran {
		ran = true
		plot = 0
	}
	if !instance_exists(obj_drawer) && plot = 0 {
		scr_get_txt("story")
		instance_create(0,0,obj_drawer)
		plot = 1
	}
	if plot == 1 {
		if !instance_exists(obj_drawer) {
			plot = 2
			alarm[0] = 60
		}	
	}	
	
}
if keyboard_check_pressed(ord("H")) {
	room_goto(room_test)
}
scr_is_debug()