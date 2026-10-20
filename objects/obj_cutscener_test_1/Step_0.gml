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
		mus_play(mus_battle_rkb,true,1)
	}
	
}
if instance_exists(kris_actor) && ran {
	
	if !executed {
		mus_fade(0,1)
		show_debug_message(global.actors)
		
		dir = Left
		sp = 2
		
		obj_mainchara.dir = dir
		
		executed = true
		
		
			
		cutscene_walk(kris_actor,Left,10,120)
		cutscene_follow_camera(kris_actor,1)
		
		
		var alarm0 = time_source_create(time_source_game,121,time_source_units_frames,function() {
		var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			cutscene_walk(kris_actor,Down,10,120)
			
		})
		var alarm1 = time_source_create(time_source_game,121 + 120,time_source_units_frames,function() {
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			cutscene_actor_set_pos(kris_actor,3648,3488,false)
			cutscene_unfollow_camera()
			executed = false
		})
		array_push(alarms,alarm0)
		array_push(alarms,alarm1)
		time_source_start(alarm0)
		time_source_start(alarm1)
		
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		
	}
}
visible = !global.cutscene