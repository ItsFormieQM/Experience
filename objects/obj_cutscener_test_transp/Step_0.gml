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
	}
	
}
if instance_exists(kris_actor) && ran {
	
	if !executed {
		executed = true
		cutscene_actor_set_direction(kris_actor,Down)
		cutscene_real_set_direction(kris_actor,Down)
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 1{
			con += 0.1
		}
		
	}
}
visible = !global.cutscene