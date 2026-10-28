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
		executed = true	
		// sorry to keep u waiting
		var susie_actor = cutscene_actor_create(obj_susie_actor,0,0)
		var ralsei_actor = cutscene_actor_create(obj_ralsei_actor,0,0)
		cutscene_actor_set_pos(ralsei_actor,1444,221,false)
		cutscene_actor_set_pos(susie_actor,1295,218,false)
		cutscene_actor_set_direction(ralsei_actor,Left)
		cutscene_actor_set_direction(susie_actor,Right)
		cutscene_actor_set_direction(kris_actor,Up)
		var alarm1 = time_source_create(tsg,65,tsuf,function(){
			var kris_actor = cutscene_actor_get_instance(Actors.Kris)
			cutscene_actor_walk(kris_actor,Up,2,85)
		})
		var alarm2 = time_source_create(tsg,100+65,tsuf,function(){
			var kris_actor = cutscene_actor_get_instance(Actors.Kris)
			cutscene_actor_walk(kris_actor,Right,3,65)
		})
		var alarm3 = time_source_create(tsg,100+65+85,tsuf,function(){
			var kris_actor = cutscene_actor_get_instance(Actors.Kris)
			cutscene_actor_show_emotion(kris_actor,Actor_Emotion.ExclamationMark,50)
		})
		var alarm4 = time_source_create(tsg,100+65+85+130,tsuf,function(){
			var kris_actor = cutscene_actor_get_instance(Actors.Kris)
			cutscene_move_camera(Right,150,4)
		})
		var alarm5 = time_source_create(tsg,100+65+85+260+100,tsuf,function(){
			cmd_dialogue_play("susie_dateruiner_1")
		})
		array_push(alarms,alarm1)
		array_push(alarms,alarm2)
		array_push(alarms,alarm3)
		array_push(alarms,alarm4)
		array_push(alarms,alarm5)
		time_source_start(alarm1)
		time_source_start(alarm2)
		time_source_start(alarm3)
		time_source_start(alarm4)
		time_source_start(alarm5)
	}
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 1 {
			con += 0.1
		}
	}
}
visible = !global.cutscene