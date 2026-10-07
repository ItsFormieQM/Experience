///@desc Stuff
#region Variables
global.cutscene = true
moving_cam = false
cam_move_speed = 0
cam_offset = 0
cam_dir = noone
cam_smooth = false
cam_speed = 1
timer = 0
con = 0
#endregion
#region Syntaxes
cam = view_camera[0]
camx = camera_get_view_x(cam)
camy = camera_get_view_y(cam)
///@desc Starts a conversation
///@param {real} type The indentifier of the conversation
cutscene_start_dialogue = function(type) {
	cmd_dialogue_play(type)
	return
}
///@desc Makes an actor move to somewhere with speed, time, and direction.
///@param {Id.Instance} instance The instance handle preferrably to refer to.
///@param {string} dir Use the direction macros! The direction to move to.
///@param {real} sp How fast the actor moves. Negative values reverse the direction.
///@param {real} delay How long to wait before stopping the movement. Negative values get converted to positive values to avoid bugs.
cutscene_walk = function(instance, dir, sp, delay) {
	delay = abs(delay)
	with instance {
		cutscene_walk(dir,sp,delay)
	}
}
cutscene_move_camera = function(dir, timeinframes, camspeed) {
	_dir = dir
	_time = timeinframes
	_cs = camspeed
	with obj_camera {
		move_cam(other._dir,other._cs,other._time)
	}
	return
}

#endregion