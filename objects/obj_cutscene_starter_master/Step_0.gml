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
			
			cutscene_walk(kris_actor,Left,2,60)
			cutscene_move_camera(Left,60,2)
			mus_fade(35,0)
			var alarms = 2
			var alarm0 = time_source_create(time_source_game,61,time_source_units_frames,function() {
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				cutscene_walk(kris_actor,Up,2,60)
				cutscene_move_camera(Up,60,2)
				
			})
			var alarm1 = time_source_create(time_source_game,61 + 60,time_source_units_frames,function() {
				cutscene_start_dialogue("")
			})
			array_push(other.alarms,alarm0)
			array_push(other.alarms,alarm1)
			time_source_start(alarm0)
			time_source_start(alarm1)
		}
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con >= 1 {
			//cutscene_move_camera()
			
			other.alarm[0] = 100
			con = 0
			
			cutscene_follow_camera(obj_mainchara,0.05)
		}
	}
}
visible = !global.cutscene