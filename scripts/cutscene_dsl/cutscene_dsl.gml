///@desc Starts a conversation
///@param {real} type The identifier of the conversation
///@param {real} convo Optional. Selects a message selection defined in 'SCR_TEXT'.
function cutscene_start_dialogue(type,convo=0) {
	cmd_dialogue_play(type,true,convo)
}
///@desc Makes an actor move to somewhere with speed, time, and direction.
///@param {Id.Instance} instance The instance handle preferrably to refer to.
///@param {string} dir Use the direction macros! The direction to move to.
///@param {real} sp How fast the actor moves. Negative values reverse the direction.
///@param {real} delay How long to wait before stopping the movement. Negative values get converted to positive values to avoid bugs.
function cutscene_walk(instance, dir, sp, delay) {
	delay = abs(delay)
	with instance {
		self.cutscene_walk(dir,sp,delay)
	}
}
///@desc Moves the camera to a specified location.
///@param {real} dir The direction to move in.
///@param {real} timeinframes How many frames before stopping.
///@param {real} camspeed The speed to move in.
function cutscene_move_camera(dir, timeinframes, camspeed) {
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
function cutscene_follow_camera(to_an_instance,smoothness) {
	with obj_camera {
		follow_cam(to_an_instance,smoothness)
	}
}
function cutscene_coordinate_follow_camera(_x,_y,smoothness) {
	with obj_camera {
		ext_follow_cam(_x,_y,smoothness)
	}
}
///@desc Unlocks the camera from an object.
function cutscene_unfollow_camera() {
	with obj_camera {
		unfollow_cam()
	}
}
///@desc Sets the specified actor to the specified direction.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
///@param {String} Use the direction macros! The direction to set at.
function cutscene_actor_set_direction(actor_handle,dir) {
	with actor_handle {
		self.dir = dir
	}
}
///@desc Sets the specified actor's real playable object alternate to the specified direction. This is different than 'cutscene_actor_set_direction' because it changes the direction of the actual playable object rather than the actor's.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
///@param {String} Use the direction macros! The direction to set at.
function cutscene_real_set_direction(actor_handle,dir) {
	with actor_handle {
		realobject.dir = dir
	}
}

///@desc Sets an actor's x and y coordinates to the specified amount. It can be absolute or relative to itself.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
///@param {real} x The x coordinate to set.
///@param {real} y The y coordinate to set.
///@param {bool} relative Whether to offset or set to the room coordinates.
function cutscene_actor_set_pos(actor_handle,_x,_y,relative) {
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
function cutscene_actor_set_sprite(actor_handle,sprite,sprite_frame,delay=-1) {
	with actor_handle {
		cutscene_set_sprite(sprite,sprite_frame,delay)
	}
}
///@desc Resets an actor's sprite.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
function cutscene_actor_reset_sprite(actor_handle) {
	with actor_handle {
		cutscene_reset_spr()
	}
}
///@desc Sets the specified actor's real playable object alternate to the specified direction. This is different than 'cutscene_actor_set_direction' because it changes the direction of the actual playable object rather than the actor's.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
///@param {real} emotion Use the enum Actor_Emotion to set the emotion! The emotion to display.
///@param {real} delay The amount of time before destroying the emotion.
function cutscene_actor_show_emotion(actor_handle,emotion,_delay) {
	var emote = noone
	switch emotion {
		case Actor_Emotion.ExclamationMark:
			emote = instance_create(0,0,obj_actoremotion_exclamation,{actor: actor_handle, delay: _delay})
			break
		default:
			break
	}
}
///@desc Sets an actor's visibility.
///@param {Id.Instance} actor_handle The actor's instance ID to refer to.
///@param {bool} visible Either set to be visible (visible = true) or invisible (visible = false).
function cutscene_actor_set_visibility(actor_handle, is_visible){
	with actor_handle {
		visible = is_visible
	}
}
///@desc This is useless and broken somehow, it's broken so it returns -1 always
///@param {Id.Instance} actor_handle The actor ID to refer to.
///@param {real} red How much red to set.
///@param {real} green How much green to set.
///@param {real} blue How much blue to set.
function cutscene_actor_set_rgb(actor_handle,red=0,green=0,blue=0){
	return -1
	//red = clamp(red,0,255)
	//green = clamp(green,0,255)
	//blue = clamp(blue,0,255)
	//with actor_handle {
	//	cutscene_set_rgb(red,green,blue)
	//}
}
///@desc Sets an actor's direction sprites to the supplied.
///@param {Id.Instance} actor_handle The actor to refer to.
///@param {Asset.GMSprite} up_sprite The sprite to set when going up.
///@param {Asset.GMSprite} down_sprite The sprite to set when going down.
///@param {Asset.GMSprite} left_sprite The sprite to set when going left.
///@param {Asset.GMSprite} right_sprite The sprite to set when going right.
function cutscene_actor_set_direction_sprites(actor_handle,up=noone,down=noone,left=noone,right=noone){
	with actor_handle {
		cutscene_set_direction_spr(up,down,left,right)
	}
}
///@desc Resets the actor's direction sprites to the actor's default ones.
function cutscene_actor_reset_direction_sprites() {
	with actor_handle {
		cutscene_reset_direction_spr()
	}
}
///@desc If the actor has no playable or NPC equivalent, use this function to spawn them safely. Returns the ID of the spawned object and can be a substitute for 'cutscene_get_actor_instance'.
///@param {Asset.GMObject} actor_object The object to spawn.
///@param {real} x The x coordinate to spawn the object in.
///@param {real} y The y coordinate to spawn the object in.
function cutscene_actor_create(actor_object,_x,_y){
	return instance_create_depth(_x,_y,depth,actor_object)
}
///@desc Returns the instance handle for a specific actor.
///@param {real} name Use the enum Actors.[actornamehere]!
function cutscene_get_actor_instance(name){
	var handle = noone
	for (var i = 0; i < array_length(global.actors);i++) {
		if global.actors[i] == noone {
			continue
		}
		if global.actors[i].actor_name == name {
			handle = global.actors[i].actor
			
			return handle
		}
	}
	
}
///@desc Does a fade animation. It always starts fading out but if the boolean 'reversed' is set to true, then it starts fading in.
///@param {real} incrementor The amount to increment or decrement depending on the 'reversed' boolean value. 
///@param {bool} reversed Whether to make it fade out (reversed = false) or fade in (reversed = true). Default is false.
function cutscene_fade(_incrementor, _reversed){
	var fader = instance_create_layer(0,0,"TECHNICAL",obj_actor_fader,{incrementor: _incrementor, reversed: _reversed})
	if instance_exists(fader) {
		show_debug_message("TRUE")
	}
	else {
		show_debug_message("false")
	}
}