if room == room_gaster {
	if plot == 0 {
		instance_create_layer(320,240,"Instances",obj_heart_appear)
		obj_heart_appear.ran = true
	}
	else if plot == 3{
		fadeout_heart = true
		plot = 4
		scr_fadeout(global.current_mus,3000,0)
	}
	else if plot == 5 {
		room_goto(room_start)	
	}	
}
else if room == room_story {
	room_goto(room_luzaro_beach_wharf)
	instance_create(0,0,obj_black)
	obj_black.image_xscale = 99
	obj_black.image_yscale = 99
	obj_black.rate = 0.04
}	