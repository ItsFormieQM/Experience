if !global.on_battle {
	var cam = view_camera[0]
	var cam_w = camera_get_view_width(cam)
	var cam_h = camera_get_view_height(cam)

	var tx = x - (cam_w / 2)
	var ty = y - (cam_h / 2)

	tx = clamp(tx,0,room_width - cam_w)
	ty = clamp(ty,0,room_height - cam_h)

	camera_set_view_pos(cam,floor(tx),floor(ty))
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
}
move_l = false
moe_r = false
move_u = false
move_d = false