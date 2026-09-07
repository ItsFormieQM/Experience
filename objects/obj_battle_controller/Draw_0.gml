draw_self()

if fight {
	var cam = view_camera[0]
	var cam_x = camera_get_view_x(cam)
	var cam_y = camera_get_view_y(cam)
	if !instance_exists(obj_atk_box) {
		instance_create(
			global.xx_offset[0] + 70 + cam_x,
			global.yy_offset[0] + 80 + cam_y,
			obj_atk_box
		)
	}
}