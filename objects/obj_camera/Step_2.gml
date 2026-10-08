if !global.cutscene && !global.flag[Flag.On_Battle] {
	
	var cam = view_camera[0]
	var cam_w = camera_get_view_width(cam)
	var cam_h = camera_get_view_height(cam)
	var cam_x = camera_get_view_x(cam)
	var cam_y = camera_get_view_y(cam)
	var tx = floor(obj_mainchara.x - (cam_w / 2))
	var ty = floor(obj_mainchara.y - (cam_h / 2))
	tx = clamp(tx,0,room_width - cam_w)
	ty = clamp(ty,0,room_height - cam_h)
	camera_set_view_pos(cam,floor(tx),floor(ty))
	
}
else {
	
	var cam = view_camera[0]
	var cam_w = camera_get_view_width(cam)
	var cam_h = camera_get_view_height(cam)
	var cam_x = camera_get_view_x(cam)
	var cam_y = camera_get_view_y(cam)
	var tx = floor((x + (sprite_width / 2)) - (cam_w / 2))
	var ty = floor((y + (sprite_height / 2)) - (cam_h / 2))
	tx = clamp(tx,0,room_width - cam_w)
	ty = clamp(ty,0,room_height - cam_h)
	camera_set_view_pos(cam,floor(tx),floor(ty))
}
if following && !is_undefined(smoothness){
	
	if instance_exists(to_an_object) {
		distance = distance_to_point(_x,_y)
		_sp = distance / 17 * 2
		time = distance / _sp
		
		x = lerp(x, to_an_object.x - (sprite_width / 2), smoothness)
		y = lerp(y, to_an_object.y - (sprite_height / 2), smoothness)
		var cam = view_camera[0]
		var cam_w = camera_get_view_width(cam)
		var cam_h = camera_get_view_height(cam)
		var tx = floor(to_an_object.x - (cam_w / 2))
		var ty = floor(to_an_object.y - (cam_h / 2))
		
		tx = clamp(tx,0,room_width - cam_w)
		ty = clamp(ty,0,room_height - cam_h)
		camera_set_view_pos(cam,floor(tx),floor(ty))
	}
}