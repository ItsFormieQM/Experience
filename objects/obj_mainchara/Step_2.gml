if !global.flag[Flag.On_Battle] && !global.cutscene {
	var cam = view_camera[0]
	var cam_w = camera_get_view_width(cam)
	var cam_h = camera_get_view_height(cam)
	var cam_x = camera_get_view_x(cam)
	var cam_y = camera_get_view_y(cam)
	var tx = x - (cam_w / 2)
	var ty = y - (cam_h / 2)

	//tx = clamp(tx,0,room_width - cam_w)
	//if instance_exists(obj_carrybird) {
	//	if !obj_carrybird.active {
	//		ty = clamp(ty,0,room_height - cam_h)
	//	}
	//	else {
	//		ty = cam_y
	//	}
	//}
	//else {
	//	ty = clamp(ty,0,room_height - cam_h)
	//}
	

	//camera_set_view_pos(cam,floor(tx),floor(ty))
	with obj_dialogue {
		cam = view_camera[0]
		x = camera_get_view_x(cam) + 320
		y = camera_get_view_y(cam) + self_y
	}
	with obj_bag {
		x = camera_get_view_x(cam) + og_x
		y = camera_get_view_y(cam) + og_y
	}
	with obj_kris_centerer {
		x = camera_get_view_x(cam) + self_x
		y = camera_get_view_y(cam) + self_y
	}
	with obj_enemy_centerer {
		x = camera_get_view_x(cam) + self_x
		y = camera_get_view_y(cam) + self_y
	}
	with obj_battle_ui_txtbox {
		x = camera_get_view_x(cam) + self_x
		y = camera_get_view_y(cam) + self_y
	}
	with obj_battle_ui_fight_kris {
		x = camera_get_view_x(cam) + self_x
		y = camera_get_view_y(cam) + self_y
	}
	with obj_save_menu {
		x = camera_get_view_x(cam) + self_x
		y = camera_get_view_y(cam) + self_y
	}
	
}
move_l = false
move_r = false
move_u = false
move_d = false
if global.cutscene {
	visible = false
	
	if !instance_exists(obj_mainchara_actor) {
		_actor = instance_create(x,y,obj_mainchara_actor)
		for (var i = 0; i < array_length(global.actors); i++) {
			if global.actors[i] == noone {
				global.actors[i] = {actor_name: Actors.Kris, actor: _actor}
				show_debug_message(global.actors)
				break
			}
		}
		
	}
	var kris_actor = cutscene_get_actor_instance(Actors.Kris)
	x = round(kris_actor.x)
	y = round(kris_actor.y)
	//show_debug_message($"X: {kris_actor.x}")
	//show_debug_message($"Y: {kris_actor.y}")
	//show_debug_message($"MAINCHARA: {x}")
	//show_debug_message($"MAINCHARA: {y}")
}
else {
	
}