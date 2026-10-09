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
	}
}
if instance_exists(kris_actor) && ran {
	
	if !executed {
		
		show_debug_message(global.actors)
		
		dir = Left
		sp = 2
		
		obj_mainchara.dir = dir
		
		executed = true
		
		with obj_cutscene_controller {
			var frisk_actor = cutscene_actor_create(obj_frisk_actor,0,0)
			cutscene_actor_set_direction_sprites(
				frisk_actor,
				spr_frisk
			)
			cutscene_actor_set_pos(frisk_actor,30,50,true)
			cutscene_fade(0.008,false)
			cutscene_actor_set_pos(kris_actor,0,-85,true)
			cutscene_walk(kris_actor,Down,1.5,60)
			cutscene_follow_camera(obj_mainchara_actor,1)
			
			mus_fade(35,0)
			var alarms = 2
			var alarm0 = time_source_create(time_source_game,61,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				cutscene_unfollow_camera()
				
				cutscene_follow_camera(kris_actor,1)
				
			})
			var alarm1 = time_source_create(time_source_game,61 + 60,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				
				cutscene_walk(kris_actor,Left,5,120)
				
			})
			var alarm2 = time_source_create(time_source_game,120 + 60 * 2,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				
				
				cutscene_actor_show_emotion(kris_actor,Actor_Emotion.ExclamationMark,100)
			})
			var alarm3 = time_source_create(time_source_game,120 + 60 * 3 + 135,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				var frisk_actor = cutscene_get_actor_instance(Actors.Frisk)	
				cutscene_unfollow_camera()
				cutscene_follow_camera(frisk_actor,0.0125)
				
			})
			
			array_push(other.alarms,alarm0)
			array_push(other.alarms,alarm1)
			array_push(other.alarms,alarm2)
			array_push(other.alarms,alarm3)
			time_source_start(alarm0)
			time_source_start(alarm1)
			time_source_start(alarm2)
			time_source_start(alarm3)
		}
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con >= 1 {
			//cutscene_move_camera()
			
			other.alarm[0] = 100
			con = 0
			
			cutscene_real_set_direction(kris_actor,Up)
		}
	}
}
visible = !global.cutscene