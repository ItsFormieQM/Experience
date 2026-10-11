var kris_actor = cutscene_get_actor_instance(Actors.Kris)
if place_meeting(x,y,obj_mainchara) && !ran {
	
	ran = true
	if !instance_exists(obj_cutscene_controller) {
		master_cutscener = instance_create(0,0,obj_cutscene_controller)
	}
}
if spawned && !ran{
	ran = true
	if !instance_exists(obj_cutscene_controller) {
		master_cutscener = instance_create(0,0,obj_cutscene_controller)
	}
}
if instance_exists(kris_actor) && ran {
	
	if !executed {
		
		cutscene_fade(0.0025,false)
		show_debug_message(global.actors)
		
		dir = Left
		sp = 2
		
		obj_mainchara.dir = dir
		
		executed = true
		
		with obj_cutscene_controller {
			
			cutscene_actor_set_pos(kris_actor,1184,320,false)
			cutscene_follow_camera(kris_actor,1)
			other.alarm0 = time_source_create(time_source_game,20,time_source_units_frames,function() {
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				cutscene_walk(kris_actor,Left,1,80)
			})
			other.alarm1 = time_source_create(time_source_game,20 + 200,time_source_units_frames,function() {
				var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				cutscene_follow_camera(kris_actor,1)
			})
			other.alarm2 = time_source_create(time_source_game,20 + 260,time_source_units_frames,function() {
				
				
				con = 1
			})
			
			array_push(other.alarms,other.alarm0)
			array_push(other.alarms,other.alarm1)
			array_push(other.alarms,other.alarm2)
			time_source_start(other.alarm0)
			time_source_start(other.alarm1)
			time_source_start(other.alarm2)
			
			
		}
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con >= 1 {
			other.alarm[0] = 1
			con = -1
		}
	}
}
visible = !global.cutscene