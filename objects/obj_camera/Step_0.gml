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

else {
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

if following && !is_undefined(smoothness) && instance_exists(to_an_object){
	
	var _target_x = to_an_object.x - (sprite_width / 2)
	var _target_y = to_an_object.y - (sprite_height / 2)
	var _dir = point_direction(x,y,_target_x,_target_y)
	var _dist = point_distance(x, y, _target_x, _target_y) 
	
	if !ran {
		if _dist == 0 {
			smoothness = (4)
		} else {
			smoothness = clamp(smoothness * 10, 1, _dist - 1) 
		}
		ran = true
	}
	
	if !lockin {
		if _dist <= smoothness {
			x = _target_x
			y = _target_y
			lockin = true
			speed = 0
		}
		else {
			move_towards_point(_target_x,_target_y,smoothness / global.deltatime)
		}
	}
	
	if lockin {
		x = _target_x
		y = _target_y
		speed = 0
		
		if _dist > smoothness + 2 {
			lockin = false
		}
	}
}

