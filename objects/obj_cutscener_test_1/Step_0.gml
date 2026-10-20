var kris_actor = cutscene_get_actor_instance(Actors.Kris)

if place_meeting(x,y,obj_mainchara) && !ran {
	
	ran = true
	if !instance_exists(obj_cutscene_controller) {
		master_cutscener = instance_create(0,0,obj_cutscene_controller)
	}
}
if spawned {
	ran = true
	if !instance_exists(obj_cutscene_controller) {
		master_cutscener = instance_create(0,0,obj_cutscene_controller)
		instance_create(0,0,obj_dialogue)
 
		
		//global.msg = []
		//global.msg[0] = "#t001^002#fnt001^A* Player, what the actual fuck^/  are you making me do.../E"
		//global.msg[1] = "#t001^002#fnt001^A* Oh wait, ^020^002this is a debug room^/  let me guess?/E"
		//global.msg[2] = "#t001^008#fnt001^A* ..............................^/  ......................./E"
		//for (var i = 0; i < array_length(global.msg); i++) {
		//	global.xx_offset[i] = 68
		//	global.yy_offset[i] = 960 / 2 + 85
		//}
		//instance_create(0,0,obj_drawer)
	}
	
}
if instance_exists(kris_actor) && ran {
	
	if !executed {
		mus_fade(0,1)
		camloc = []
		camloc[0] = cutscene_create_camera_marker(floor(kris_actor.x),floor(kris_actor.y+5000))
		cutscene_actor_create(obj_pink_actor,kris_actor.x - 90,kris_actor.y - 20)
		alarms = []
		dir = Left
		sp = 2
		
		obj_mainchara.dir = dir
		
		
		
		mus_play(mus_ruins)
		//cutscene_actor_show_emotion(kris_actor,Actor_Emotion.ExclamationMark,120)	
		var pink_actor = cutscene_get_actor_instance(Actors.Pink)
		
		
		
		cutscene_actor_set_pos(kris_actor,0,-450,true)
		var alarm0 = time_source_create(time_source_game,1,time_source_units_frames,function() {
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			var pink_actor = cutscene_get_actor_instance(Actors.Pink)
			//cutscene_actor_set_visibility(kris_actor,false)
			//cutscene_actor_set_sprite(pink_actor,spr_pink_suprised,0)
			cutscene_walk(pink_actor,Left,10,10)
			
		})
		var alarm1 = time_source_create(time_source_game,60,time_source_units_frames,function() {
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			var pink_actor = cutscene_get_actor_instance(Actors.Pink)
			cutscene_actor_set_direction(pink_actor,Right)
			cutscene_actor_reset_sprite(pink_actor)
			cutscene_actor_show_emotion(pink_actor,Actor_Emotion.Thinking,120)
			cutscene_actor_walk(kris_actor,Down,4,110)
			
		
			
		})
		var alarm2 = time_source_create(time_source_game,110 + 60 + 60*1,time_source_units_frames,function() {
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			cutscene_actor_set_direction(kris_actor,Left)
			
		})
		var alarm3_1 = time_source_create(time_source_game,110 + 60*2 + 60*1,time_source_units_frames,function() {
			var pink_actor = cutscene_get_actor_instance(Actors.Pink)
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			
			cutscene_walk(pink_actor,Right,3,47)
			
			
		})
		
		var alarm3 = time_source_create(time_source_game,110 + 60*3+55,time_source_units_frames,function() {
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			var pink_actor = cutscene_get_actor_instance(Actors.Pink)
			cutscene_actor_set_sprite(pink_actor,spr_pink_kiss_normal,1,-999)
			
			var kissheart = cutscene_create_object_marker(pink_actor.x + 40, pink_actor.y - 30)
			with kissheart {
				sprite_index = spr_heart_kiss
				vspeed = -3
				friction = 0.2
			}
			
			
		})
		array_push(alarms,alarm0)
		array_push(alarms,alarm1)
		array_push(alarms,alarm2)
		array_push(alarms,alarm3)
		array_push(alarms,alarm3_1)
		time_source_start(alarm0)
		time_source_start(alarm1)
		time_source_start(alarm2)
		time_source_start(alarm3)
		time_source_start(alarm3_1)
		executed = true
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		
	}
}
visible = !global.cutscene