if global.cutscene {
	var cam = view_camera[0]
	var cam_w = camera_get_view_width(cam)
	var cam_h = camera_get_view_height(cam)

	var tx = x - (cam_w / 2)
	var ty = y - (cam_h / 2)

	tx = clamp(tx,0,room_width - cam_w)
	ty = clamp(ty,0,room_height - cam_h)

	camera_set_view_pos(cam,floor(tx),floor(ty))
}