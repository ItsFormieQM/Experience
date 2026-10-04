#region Variables
moving_cam = false
cam_move_speed = 0
cam_offset = 0
cam_dir = noone
cam_smooth = false
cam_speed = 1
timer = 0
#endregion
#region Syntaxes
cam = view_camera[0]
camx = camera_get_view_x(cam)
camy = camera_get_view_y(cam)
cutscene_start_dialogue = function(type) {
	cmd_dialogue_play(type)
	return
}
cutscene_move_camera = function(dir, time, camspeed) {
	_dir = dir
	_time = time
	_cs = camspeed
	with obj_camera_cutscene {
		move_cam(other._dir,other._cs,other._time)
	}
	return
}

#endregion