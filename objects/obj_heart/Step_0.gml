if room == room_gaster {
	timer_angle += wave_speed
	if timer_angle >= 360 {
		timer_angle -= 360
	}
	if obj_plot_controller.plot = 4 && image_alpha <= 0{
		instance_destroy()
	}
}
else if room == room_start {
	sprite_index = spr_heart_transp	
}	
y = start_y + dsin(timer_angle) * wave_height
