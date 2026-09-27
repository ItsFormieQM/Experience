if place_meeting(x,y,obj_mainchara) {
	if global.interacted && !ran {
		global.canmove = false
		ran = true
		snd_play(snd_jump,1.4,1)
		obj_mainchara.image_index = 0
		start = true
		alarm[0] = 5
		obj_mainchara.jump_state = true
	
	}
	obj_mainchara.sprite_index = spr_kris_jump_lw
}
if start {
	obj_mainchara.sprite_index = spr_kris_jump_lw
	obj_mainchara.image_speed = 1
	
	obj_mainchara.image_speed = 1
	with obj_mainchara {
		if !other.use_inst_pos {
			move_towards_point(other._x, other._y, other.sp)
		
			if point_distance(x, y, other._x, other._y) <= other.sp {
				x = other._x
				y = other._y
				speed = 0
				jump_state = false
				global.canmove = true
				other.start = false
				other.ran = false
				other.ran_1 = false
			}
		}
		else {
	
			if !other.ran_1 {
				other.modded_x = x + other._x
				other.modded_y = y + other._y
				other.ran_1 = true
			}
		
			move_towards_point(other.modded_x, other.modded_y, other.sp)
		
			if point_distance(x, y, other.modded_x, other.modded_y) <= other.sp {
				x = other.modded_x
				y = other.modded_y
				other.modded_y = 0
				other.modded_x = 0
				speed = 0
				jump_state = false
				global.canmove = true
				other.start = false
				other.ran = false
				other.ran_1 = false
			}
		}
	}
}
