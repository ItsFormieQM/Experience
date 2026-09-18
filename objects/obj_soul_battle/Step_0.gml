if soulmode == SoulMode.Red {
	if canmove {
		if global.w_held {
			y -= sp
			if place_meeting(x,y-1,obj_soul_wall) {
				y += sp
			}
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
if image_alpha < 1 {
	image_alpha += 0.04
}
if instance_exists(obj_battle_border) && !move_ran{
	move_ran = true
	move_towards_point(obj_battle_border.x,obj_battle_border.y,sp)
}
if point_distance(x,y,obj_battle_border.x,obj_battle_border.y) <= sp&& !stop_anim {
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