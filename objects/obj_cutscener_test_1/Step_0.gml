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
		mus_play(mus_festival,true,1)
		
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
		cutscene_actor_create(obj_pink_actor,kris_actor.x - 90,kris_actor.y)
		alarms = []
		dir = Left
		sp = 2
		
		obj_mainchara.dir = dir
		
		executed = true
		
		
		//cutscene_actor_show_emotion(kris_actor,Actor_Emotion.ExclamationMark,120)	
		
		
		cutscene_follow_camera(kris_actor,10)
		
		
		var alarm0 = time_source_create(time_source_game,121,time_source_units_frames,function() {
		var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			
			
		})
		var alarm1 = time_source_create(time_source_game,121 + 120,time_source_units_frames,function() {
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			
	
			
			
		
			
		})
		var alarm2 = time_source_create(time_source_game,121 + 120*2,time_source_units_frames,function() {
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			
			
			
			
		})
		var alarm3_1 = time_source_create(time_source_game,120 + 120*3,time_source_units_frames,function() {
			
			
			
		})
		
		var alarm3 = time_source_create(time_source_game,121 + 120*3,time_source_units_frames,function() {
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			
			
			
			
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
		
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		
	}
}
visible = !global.cutscene