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
	with obj_camera {
		x = other.x - (sprite_width / 2)
		y = other.y - (sprite_height / 2)
	}
}
move_l = false
move_r = false
move_u = false
move_d = false