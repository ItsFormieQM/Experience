if ismoving {
	with obj_battle_ui_txtbox {
		
		move_towards_point(x, other.target_y, other.sp)
		
	}
	with obj_battle_ui_fight {
		move_towards_point(x, other.target_y - 31, other.sp_1)
	}
	with obj_battle_ui_txtbox {
		if point_distance(x,y,x,other.target_y) <= other.sp {
			other.sp = 0
			speed = 0
			ismoving = false
		}
	}
	with obj_battle_ui_fight {
		if point_distance(x,y,x,other.target_y - 31) <= other.sp_1 {
			other.sp_1 = 0
			speed = 0
			
		}
	}
}
with obj_battle_ui_fight {
	if fight && chose {
		if !other.ran {
			obj_mainchara.image_speed = 0
			obj_mainchara.image_index = 0
			obj_mainchara.sprite_index = spr_kris_battle_start
			with obj_drawer {
				visible = false
			}
			other.ran = true
			other.fight_nameshow = true
			
		}
	}
	else if !fight && !chose {
		if other.ran {
			obj_mainchara.image_index = 0
			obj_mainchara.image_speed = 1
			obj_mainchara.sprite_index = spr_kris_lw_battle_idle
			with obj_drawer {
				visible = true
			}
			other.ran = false
			other.fight_nameshow = false
			
		}
	}
	if global.interacted {
		if fight {
			other.fight_nameshow = false
			other.fight = true
		}
		snd_play(snd_select,1.2)
	}
}