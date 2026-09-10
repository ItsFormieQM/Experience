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
			
			with obj_drawer {
				visible = false
			}
			other.ran = true
			other.fight_nameshow = true
			
		}
	}
	else if !fight && !chose {
		if other.ran {
			
			obj_mainchara.image_speed = 1
			obj_mainchara.sprite_index = spr_kris_lw_battle_idle
			with obj_drawer {
				visible = true
			}
			other.ran = false
			other.fight_nameshow = false
			other.fight = false
			
		}
	}
	if global.interacted {
		if fight && !other.fight && !other.chose {
			other.fight_nameshow = false
			other.fight = true
			snd_play(snd_select,1.2)
			other.chose = true
		}
		else if other.fight && !other.bullet_hell {
			if instance_exists(obj_battle_atkmkr) {
				obj_battle_atkmkr.speed = 0
			}
			other.bullet_hell = true
			other.attacked = true
			snd_play(snd_battle_atk,1.5)
		}
	}
}
if fight {
	var cam = view_camera[0]
	var cam_x = camera_get_view_x(cam)
	var cam_y = camera_get_view_y(cam)
	if !instance_exists(obj_atk_box) {
		var _x = 75 + cam_x + 80
		var _y = (480 + cam_y) - 102
		instance_create_depth(
			_x,
			_y,
			-1,
			obj_atk_box
		)
		instance_create_depth(
			_x + 120,
			_y,
			-2,
			obj_battle_atkmkr
		)
		obj_mainchara.image_speed = 0
		obj_mainchara.image_index = 0
		obj_mainchara.sprite_index = spr_kris_battle_start
		show_debug_message("spawned")
	}
}
if attacked {
	if obj_mainchara.image_index <= obj_mainchara.image_number - 1 {
		obj_mainchara.image_speed = 1
		if instance_exists(obj_battle_atkmkr) {
			var scale = 0.09
			obj_battle_atkmkr.image_xscale += scale
			obj_battle_atkmkr.image_yscale += scale
			obj_battle_atkmkr.image_alpha -= scale / 2
		}
	}
	else {
		obj_mainchara.image_speed = 0
		timer++
		delay = 10
		
		if timer >= delay {
			event_user(0)
			timer = 0
		}
	}
}
if chose && !battle_plot_calculated {
	battle_plot++
	battle_plot_calculated = true
}
