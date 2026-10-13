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
			other.alarm0 = time_source_create(time_source_game,120,time_source_units_frames,function() {
				snd_play(snd_ran,1.2)
				
				show_debug_message("called")
			})
			var alarm1 = time_source_create(time_source_global,120 + 150,time_source_units_frames,function() {
				con = 1
				cmd_warp(room_kris_house_entry,-1)
			})
			
			array_push(other.alarms,other.alarm0)
			array_push(other.alarms,alarm1)
			time_source_start(other.alarm0)
			time_source_start(alarm1)
			
			
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