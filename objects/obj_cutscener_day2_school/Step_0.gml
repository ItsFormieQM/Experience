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
		
		
		cutscene_actor_set_pos(susie_actor,1295,218,false)
		
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
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				
				
			cutscene_actor_show_emotion(kris_actor,Actor_Emotion.ExclamationMark,100)
			var susie_actor = cutscene_actor_get_instance(Actors.Susie)
			cutscene_actor_set_sprite(susie_actor,spr_susie_bangs_eatchalk,0)
			
		})
		var alarm4 = time_source_create(tsg,100+65+85+130,tsuf,function(){
			var kris_actor = cutscene_actor_get_instance(Actors.Kris)
			cutscene_move_camera(Right,100,4)
			
			
		})
		var alarm5 = time_source_create(tsg,100+65+85+260+60,tsuf,function(){
			var susie_actor = cutscene_actor_get_instance(Actors.Susie)
			cutscene_actor_set_sprite(susie_actor,spr_susie_bangs_eatchalk,0)
			with susie_actor {
				image_speed = 0.9
				onetimeanim = true
			}
			var func = function() {
				var susie = cutscene_actor_get_instance(Actors.Susie)
				with susie {
					sdm("running son")
					if floor(image_index) == 16 {
						snd_play(snd_change,1.2)
						with obj_cutscene_controller {
							con = 1
							
						}
						
						cutscene_function_remove(0)
						
					}
				}
			}	
			cutscene_function_add(func,0)
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
			
			sdm("holup")
			var alarm1 = time_source_create(tsg,100,tsuf,function(){
				
				var susie = cutscene_actor_get_instance(Actors.Susie)
				with susie {
					switched_sprite = false
				}
				cutscene_actor_set_direction_sprites(
					susie,
					noone,
					noone,
					spr_susie_bangs_walkl,
					noone
				)
				cutscene_actor_set_direction(susie,Left)
			})
			var alarm2 = time_source_create(tsg,100+60,tsuf,function(){
				var susie = cutscene_actor_get_instance(Actors.Susie)
				//cutscene_actor_show_emotion(susie,Actor_Emotion.ExclamationMark,50)
				array_push(global.normalbattle_enemyinst,obj_testnpc_enemy_battle)
				array_push(global.normalbattle_enemyinst,obj_testnpc_enemy_battle)
				array_push(global.normalbattle_enemyinst,obj_testnpc_enemy_battle)
				instance_create(0,0,obj_normal_battler,{skipintro: true})
				show_debug_message(global.normalbattle_enemyinst)
				show_debug_message($"LEN: {len(global.normalbattle_enemyinst)}")
				for (var i = 0; i < len(global.normalbattle_enemyinst); i++) {
					if object_exists(global.normalbattle_enemyinst[i]) {
						var enemier = instance_create(susie.x,susie.y,global.normalbattle_enemyinst[i])
						enemier.depth = obj_hero_kris.depth
						
						show_debug_message($"SPAWNED: {enemier.stats.name}")
						global.normalbattle_enemyinst[i] = enemier
					}
				}
				
			})
			time_source_start(alarm1)
			array_push(other.alarms,alarm1)
			time_source_start(alarm2)
			array_push(other.alarms,alarm2)
			con += 0.1
		}
	}
}
visible = !global.cutscene