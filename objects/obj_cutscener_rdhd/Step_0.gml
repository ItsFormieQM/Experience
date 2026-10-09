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
			
			cutscene_actor_set_direction_sprites(
				pink_actor,
				spr_pink_u_black,
				spr_pink_d_black,
				spr_pink_l_black,
				spr_pink_r_black
			)
			cutscene_actor_set_pos(pink_actor,315,220,false)
			cutscene_walk(pink_actor,Down,0.1,1)
			cutscene_actor_set_direction(pink_actor,Left)
			cutscene_fade(0.008,false)
			cutscene_actor_set_pos(kris_actor,0,-85,true)
			cutscene_walk(kris_actor,Down,1.5,60)
			cutscene_follow_camera(obj_mainchara_actor,1)
			
			var alarms = 2
			other.alarm0 = time_source_create(time_source_game,61 * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)

				
			})
			other.alarm1 = time_source_create(time_source_game,(61 + 60) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				
				cutscene_walk(kris_actor,Left,5,120)
				
			})
			other.alarm2 = time_source_create(time_source_game,(120 + 60 * 2) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				
				
				cutscene_actor_show_emotion(kris_actor,Actor_Emotion.ExclamationMark,100)
			})
			other.alarm3_1 = time_source_create(time_source_game,(120 + 60 * 3 + 125) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				var pink_actor = cutscene_get_actor_instance(Actors.Pink)
				cutscene_walk(pink_actor,Left,1,240)
				
			})
			other.alarm3 = time_source_create(time_source_game,(120 + 60 * 3 + 120) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				cutscene_unfollow_camera()
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				var pink_actor = cutscene_get_actor_instance(Actors.Pink)
				cutscene_follow_camera(obj_pink_actor,0.5)
				
				
			})
			other.alarm4 = time_source_create(time_source_game,((120) + 60 * 3 + 230) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var pink_actor = cutscene_get_actor_instance(Actors.Pink)
				
				
				cutscene_start_dialogue("cutscene_introstart")
			})
			other.alarm5 = time_source_create(time_source_game,150 * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				var pink_actor = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction(pink_actor,Right)
				
				
			
				
			})
			other.alarm6 = time_source_create(time_source_game,(120 + 60 * 5 + 135 + 175 + 70) * global.deltatime,time_source_units_frames,function() {
				if !global.cutscene {
					exit
				}
				
				
			})
			array_push(other.alarms,other.alarm0)
			array_push(other.alarms,other.alarm1)
			array_push(other.alarms,other.alarm2)
			array_push(other.alarms,other.alarm3)
			array_push(other.alarms,other.alarm3_1)
			array_push(other.alarms,other.alarm4)
			array_push(other.alarms,other.alarm5)
			array_push(other.alarms,other.alarm6)
			time_source_start(other.alarm0)
			time_source_start(other.alarm1)
			time_source_start(other.alarm2)
			time_source_start(other.alarm3)
			time_source_start(other.alarm3_1)
			time_source_start(other.alarm4)
			time_source_start(other.alarm5)
			time_source_start(other.alarm6)
		}
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con >= 1 {
			//cutscene_move_camera()
			//cutscene_unfollow_camera()
			//cutscene_follow_camera(kris_actor,0.5)
			//other.alarm[0] = 150 * global.deltatime
			//con = 0
			
			//cutscene_real_set_direction(kris_actor,kris_actor.dir)
			var pink_actor = cutscene_get_actor_instance(Actors.Pink)
			cutscene_actor_show_emotion(Actors.Pink,Actor_Emotion.ExclamationMark,60)
			con = 0
			time_source_start(other.alarm5)
		}
	}
}
visible = !global.cutscene