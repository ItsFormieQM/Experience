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
		
		song[0] = new_mus_play(mus_flashback_ex,0,0.8)
		new_mus_fade(song[0],60,0.6)
		cmd_dialogue_play("kris_house_myroom_bed_mybed_1",1,1)
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 0 {
			if i_exists(obj_drawer) {
				cutscene_actor_set_pos(kris_actor,517,242,false)
				cutscene_actor_set_direction(kris_actor,Left)
				obj_drawer.depth = layer_get_depth("TECHNICAL")
				con += 0.1
			}
			
		}
		else if con == 1 {
			con = 1.1
			other.alarm[1] = 120
		}
		else if con == 1.1 {
			if i_exists(obj_fader_menu) {
				with obj_fader_menu {
					if image_alpha < 0 {
						instance_destroy()
					}
				}
			}
		}
	}
}
visible = !global.cutscene