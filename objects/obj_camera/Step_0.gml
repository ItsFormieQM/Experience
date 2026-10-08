if global.cutscene {
	used = true
}
if cammoving {
	if move_l {
		x -= sp
		
	}
	if move_r {
		x += sp 
		
	}
	if move_u {
		y -= sp
		
	}
	if move_d {
		
		y += sp
		
	}
	
}
if following {
	
	if instance_exists(to_an_object) {
		distance = distance_to_point(_x,_y)
		_sp = distance / 17 * 2
		time = distance / _sp
		_x = to_an_object.x - (sprite_width / 2)
		_y = to_an_object.y - (sprite_height / 2)
	}
	move_towards_point(_x, _y, _sp)
}
else {
	move_towards_point(_x, _y, 0)
}
if keyboard_check_pressed(ord("7")) {
	show_debug_message(scr_gettext("test_1"))
}
if !global.cutscene {
	if used {
		used = false
		following = false
		sp = 0
	}
}
move_towards_point(_x, _y, _sp)