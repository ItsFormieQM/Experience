if soulmode == SoulMode.Red {
	if canmove {
		if global.w_held {
			y -= sp
			if place_meeting(x,y-1,obj_soul_wall) {
				y += sp
			}
		} 
		if global.w_press {
			moving_up = true
			moving_down = false
			moving_left = false
			moving_right = false
		}
		if global.a_press {
			moving_up = false
			moving_down = false
			moving_left = true
			moving_right = false
		}
		if global.s_press {
			moving_up = false
			moving_down = true
			moving_left = false
			moving_right = false
		}
		if global.d_press {
			moving_up = false
			moving_down = false
			moving_left = false
			moving_right = true
		}
		if global.a_held {
			x -= sp
			if place_meeting(x - 1,y,obj_soul_wall) {
				x += sp
			}
		}
		if global.s_held {
			y += sp
			if place_meeting(x,y+1,obj_soul_wall) {
				y -= sp
			}
		}
		if global.d_held {
			x += sp
			if place_meeting(x + 1,y,obj_soul_wall) {
				x -= sp
			}
		}
	}
}
else if soulmode == SoulMode.Orange {
	if canmove {
		if global.w_press {
			moving_up = true
			moving_down = false
			moving_left = false
			moving_right = false
		}
		if global.a_press {
			moving_up = false
			moving_down = false
			moving_left = true
			moving_right = false
		}
		if global.s_press {
			moving_up = false
			moving_down = true
			moving_left = false
			moving_right = false
		}
		if global.d_press {
			moving_up = false
			moving_down = false
			moving_left = false
			moving_right = true
		}
		
		if moving_up {
			y -= sp
			if place_meeting(x,y - 1,obj_soul_wall) {
				y += sp
				event_user(0)
			}
		}
		if moving_down {
			y += sp
			if place_meeting(x,y + 1,obj_soul_wall) {
				y -= sp
				event_user(0)
			}
		}
		if moving_left {
			x -= sp
			if place_meeting(x-1,y,obj_soul_wall) {
				x += sp
				event_user(0)
			}
		}
		if moving_right {
			x += sp
			if place_meeting(x + 1,y,obj_soul_wall) {
				x -= sp
				event_user(0)
			}
		}
	}
}
if image_alpha < 1 {
	image_alpha += 0.04
}
if instance_exists(obj_battle_border) && !move_ran{
	move_ran = true
	move_towards_point(obj_battle_border.x,obj_battle_border.y,othersp)
}
if instance_exists(obj_battle_border) && point_distance(x,y,obj_battle_border.x,obj_battle_border.y) <= othersp&& !stop_anim {
	sp = 2.5
	speed = 0
	if !canmove {
		x = obj_battle_border.x
		y = obj_battle_border.y
	}
	show_debug_message("holy shit its running")
	canmove = true
	stop_anim = true
}
if retract {
	if !ran {
		ran = true
		othersp = 10
		canmove = false
		move_towards_point(obj_mainchara.x,obj_mainchara.y,othersp)
	}
	if point_distance(x,y,obj_mainchara.x,obj_mainchara.y) <= othersp{
		speed = 0
		x = obj_mainchara.x
		y = obj_mainchara.y
		retract = false
	}
}