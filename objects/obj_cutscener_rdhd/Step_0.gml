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
		with obj_savepoint {
			visible = false
		}
		show_debug_message(global.actors)
		
		dir = Left
		sp = 2
		
		obj_mainchara.dir = dir
		
		executed = true
		
		with obj_cutscene_controller {
			var pink_actor = cutscene_actor_create(obj_pink_actor,0,0)
			
			
			cutscene_actor_set_pos(pink_actor,315,220,false)
			cutscene_actor_set_direction(pink_actor,Left)
			cutscene_fade(0.008,false)
			cutscene_actor_set_pos(kris_actor,0,-85,true)
			cutscene_walk(kris_actor,Down,1.5,60)
			cutscene_follow_camera(obj_mainchara_actor,1)
			
			var alarms = 2
			var alarm0 = time_source_create(time_source_game,61 * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)

				
			})
			var alarm1 = time_source_create(time_source_game,(61 + 60) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				
				cutscene_walk(kris_actor,Left,5,120)
				
			})
			var alarm2 = time_source_create(time_source_game,(120 + 60 * 2) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				
				
				cutscene_actor_show_emotion(kris_actor,Actor_Emotion.ExclamationMark,100)
			})
			var alarm3_1 = time_source_create(time_source_game,(120 + 60 * 3 + 110) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				var pink_actor = cutscene_get_actor_instance(Actors.Pink)
				
				cutscene_unfollow_camera()
			})
			var alarm3 = time_source_create(time_source_game,(120 + 60 * 3 + 120) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				var pink_actor = cutscene_get_actor_instance(Actors.Pink)
				cutscene_follow_camera(obj_pink_actor,0.5)
				
				
			})
			var alarm4 = time_source_create(time_source_game,(120 + 60 * 4 + 135 + 70) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				
				
				
			})
			var alarm5 = time_source_create(time_source_game,(120 + 60 * 5 + 135 + 165) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				
				
				
			
				
			})
			var alarm6 = time_source_create(time_source_game,(120 + 60 * 5 + 135 + 175 + 70) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				cutscene_start_dialogue("test_1")
				
			})
			array_push(other.alarms,alarm0)
			array_push(other.alarms,alarm1)
			array_push(other.alarms,alarm2)
			array_push(other.alarms,alarm3)
			array_push(other.alarms,alarm3_1)
			array_push(other.alarms,alarm4)
			array_push(other.alarms,alarm5)
			array_push(other.alarms,alarm6)
			time_source_start(alarm0)
			time_source_start(alarm1)
			time_source_start(alarm2)
			time_source_start(alarm3)
			time_source_start(alarm3_1)
			time_source_start(alarm4)
			time_source_start(alarm5)
			time_source_start(alarm6)
		}
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con >= 1 {
			//cutscene_move_camera()
			cutscene_unfollow_camera()
			cutscene_follow_camera(kris_actor,0.5)
			other.alarm[0] = 150 * global.deltatime
			con = 0
			
			cutscene_real_set_direction(kris_actor,kris_actor.dir)
		}
	}
}
visible = !global.cutscene