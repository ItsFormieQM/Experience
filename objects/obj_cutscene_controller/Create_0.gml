///@desc Stuff
#region Variables
gc_enable(false)



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
global.canmove = false
///@desc Starts a conversation
///@param {real} type The identifier of the conversation
///@param {real} convo Optional. Selects a message selection defined in 'SCR_TEXT'.
cutscene_start_dialogue = function(type,convo=0) {
	cmd_dialogue_play(type,true,convo)
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
///@desc Moves the camera to a specified location.
///@param {real} dir The direction to move in.
///@param {real} timeinframes How many frames before stopping.
///@param {real} camspeed The speed to move in.
cutscene_move_camera = function(dir, timeinframes, camspeed) {
	_dir = dir
	_time = timeinframes * global.deltatime
	_cs = camspeed
	with obj_camera {
		move_cam(other._dir,other._cs,other._time)
	}
	return
}
///@desc Locks the camera to an object.
///@param {Id.Instance} to_an_instance The direction to move in.
///@param {real} smoothness How smooth the camera moves.
cutscene_follow_camera = function(to_an_instance,smoothness) {
	with obj_camera {
		follow_cam(to_an_instance,smoothness)
	}
}
///@desc Unlocks the camera from an object.
cutscene_unfollow_camera = function() {
	with obj_camera {
		unfollow_cam()
	}
}
///@desc Sets the specified actor to the specified direction.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
///@param {String} Use the direction macros! The direction to set at.
cutscene_actor_set_direction = function(actor_handle,dir) {
	with actor_handle {
		self.dir = dir
	}
}
///@desc Sets the specified actor's real playable object alternate to the specified direction. This is different than 'cutscene_actor_set_direction' because it changes the direction of the actual playable object rather than the actor's.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
///@param {String} Use the direction macros! The direction to set at.
cutscene_real_set_direction = function(actor_handle,dir) {
	with actor_handle {
		realobject.dir = dir
	}
}

///@desc Sets an actor's x and y coordinates to the specified amount. It can be absolute or relative to itself.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
///@param {real} x The x coordinate to set.
///@param {real} y The y coordinate to set.
///@param {bool} relative Whether to offset or set to the room coordinates.
cutscene_actor_set_pos = function(actor_handle,_x,_y,relative) {
	with actor_handle {
		if relative {
			x += _x
			y += _y
		}
		else {
			x = _x
			y = _y
		}
	}
}
///@desc Sets an actor's sprite to a specified one, along with setting what frame of the sprite to display.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
///@param {Id.Sprite} sprite The sprite to use.
///@param {real} sprite_frame The frame of the set sprite to display.
///@param {real} delay Optional. How many frames before it gets reset to the default sprites.
cutscene_actor_set_sprite = function(actor_handle,sprite,sprite_frame,delay=-1) {
	with actor_handle {
		cutscene_set_sprite(sprite,sprite_frame,delay)
	}
}
///@desc Resets an actor's sprite.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
cutscene_actor_reset_sprite = function(actor_handle) {
	with actor_handle {
		cutscene_reset_spr()
	}
}
enum Actor_Emotion {
	ExclamationMark
}
#endregion