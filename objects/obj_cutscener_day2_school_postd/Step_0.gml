var kris_actor = cutscene_get_actor_instance(Actors.Kris)

if place_meeting(x,y,obj_mainchara) && !ran {
	
	ran = true
	if !instance_exists(obj_cutscene_controller) {
		master_cutscener = instance_create(0,0,obj_cutscene_controller)
		sdm("ran")
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
		executed = true	
		// sorry to keep u waiting
		sdm("son")
		
		
		cutscene_walk(kris_actor,Right,2,100)
		cutscene_actor_create(obj_susie_actor,kris_actor.x-400,kris_actor.y)
		
	}
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 1 {
			
		}
	}
	
}
