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
		
		cutscene_fade(0.0025,false)
		show_debug_message(global.actors)
		
		dir = Left
		sp = 2
		
		obj_mainchara.dir = dir
		
		executed = true
		
		with obj_cutscene_controller {
			other.alarm0 = time_source_create(time_source_game,120,time_source_units_frames,function() {
				snd_play(snd_ran,1.2)
			})
			other.alarm1 = time_source_create(time_source_game,120 * 2,time_source_units_frames,function() {
				cutscene_fade(0.05,false)
				room_goto(room_kris_house_entry)
				other.alarm[0] = 1
			})
			array_push(other.alarms,other.alarm0)
			array_push(other.alarms,other.alarm1)
			time_source_start(other.alarm0)
			time_source_start(other.alarm1)
			
			
		}
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		
	}
}
visible = false