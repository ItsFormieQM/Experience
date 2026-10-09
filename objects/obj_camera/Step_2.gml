if !global.cutscene && !global.flag[Flag.On_Battle] {
	x = obj_mainchara.x - (sprite_width / 2)
	y = obj_mainchara.y - (sprite_height / 2)
	var cam = view_camera[0]
	var cam_w = camera_get_view_width(cam)
	var cam_h = camera_get_view_height(cam)
	var cam_x = camera_get_view_x(cam)
	var cam_y = camera_get_view_y(cam)
	var tx = x - (cam_w / 2)
	var ty = y - (cam_h / 2)
	tx = clamp(tx,0,room_width - cam_w)
	ty = clamp(ty,0,room_height - cam_h)
	camera_set_view_pos(cam,tx,ty)
	
}
if following && !is_undefined(smoothness){
	
	
	//if smoothness == 0 && instance_exists(to_an_object){
	//	var _x = to_an_object.x
	//	var _y = to_an_object.y
	//	distance = point_distance(x,y,_x,_y)
	//	_sp = 10
	//	if distance <= _sp {
	//		x = _x
	//		y = _y
	//	}
	//	else {
	//		var _dir = point_direction(x,y,_x,_y)
	//		x += lengthdir_x(_sp, _dir)
	//		y += lengthdir_y(_sp, _dir)
	//	}
	//	exit
	//}
	
	var cam = view_camera[0]
	var cam_w = camera_get_view_width(cam)
	var cam_h = camera_get_view_height(cam)
	var tx = x - (cam_w / 2)
	var ty = y - (cam_h / 2)
	tx = clamp(tx,0,room_width - cam_w)
	ty = clamp(ty,0,room_height - cam_h)
	camera_set_view_pos(cam,floor(tx),floor(ty))

			
}