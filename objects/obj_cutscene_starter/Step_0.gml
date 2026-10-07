if place_meeting(x,y,obj_mainchara) && !ran {
	ran = true
	if !instance_exists(obj_cutscene_controller) {
		master_cutscener = instance_create(0,0,obj_cutscene_controller)
	}
}
if instance_exists(global.actors[0]) && ran {
	
	if !executed {
		
		show_debug_message(global.actors)
		
		dir = Left
		sp = 2
		
		obj_mainchara.dir = dir
		
		executed = true
		
		with obj_cutscene_controller {
			for (var i = 0; i < array_length(global.actors); i++) {
				if global.actors[i].actor_name == Actors.Kris {
					cutscene_walk(global.actors[i].actor,Left,2,60)
				}
			}
			cutscene_move_camera(Left,60,2)
			mus_fade(35,0)
			var alarms = 2
			var alarm0 = time_source_create(time_source_game,61,time_source_units_frames,function() {
				for (var i = 0; i < array_length(global.actors); i++) {
					if global.actors[i].actor_name == Actors.Kris {
						cutscene_walk(global.actors[i].actor,Up,2,60)
					}
				}
				cutscene_move_camera(Up,60,2)
				
			})
			var alarm1 = time_source_create(time_source_game,61 + 60,time_source_units_frames,function() {
				cutscene_start_dialogue("gaster_what_1")
			})
			time_source_start(alarm0)
			time_source_start(alarm1)
		}
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con >= 1 {
			other.alarm[0] = 1
		}
	}
}
visible = !global.cutscene