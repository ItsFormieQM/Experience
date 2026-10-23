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
		cutscene_walk(kris_actor,Left,2.5,40)
		var gasterer = cutscene_actor_create(obj_gaster_actor,kris_actor.x,kris_actor.y - 380)
		var alarm1 = time_source_create(time_source_game,41,time_source_units_frames,function(){
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			cutscene_walk(kris_actor,Up,1.95,40)
			cutscene_move_camera(Up,40,6)
		})
		var alarm2 = time_source_create(time_source_game,41+40,time_source_units_frames,function(){
			mus_play(mus_meeting_flower,true,1,0.85)
		})
		var alarm3 = time_source_create(time_source_game,41+45,time_source_units_frames,function(){
			global.msg = []
			var index = 0
			global.msg[index] = scr_gettext("gasterer_1")
			index++
			global.msg[index] = scr_gettext("gasterer_2")
			index++
			global.msg[index] = scr_gettext("gasterer_3")
			index++
			global.msg[index] = scr_gettext("gasterer_4")
			for (var i = 0; i < array_length(global.msg); i++) {
				global.xx_offset[i] = 68
				global.yy_offset[i] = 960 / 2 + 85
			}
			instance_create(0,0,obj_drawer)
		})
		array_push(other.alarms,alarm1)
		array_push(other.alarms,alarm2)
		array_push(other.alarms,alarm3)
		
		time_source_start(alarm1)
		time_source_start(alarm2)
		time_source_start(alarm3)
		
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 1 {
			con = 1.1
			var gaster_actor = cutscene_get_actor_instance(Actors.Frisk)
			instance_destroy(gaster_actor)
			other.alarm[0] = 60
			cutscene_follow_camera(kris_actor,0.6)
			cutscene_real_set_direction(kris_actor,Up)
		}
	}
}
visible = !global.cutscene