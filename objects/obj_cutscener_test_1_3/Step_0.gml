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
		var froggit_actor = cutscene_actor_create(obj_froggit_actor,kris_actor.x,kris_actor.y-110-340)
		cutscene_walk(kris_actor,Up,4,70)
		var alarm1 = time_source_create(tsg,70+50,tsuf,function(){
			cutscene_move_camera(Up,110,4)
		})
		
		var alarm2 = time_source_create(tsg,70+185,tsuf,function(){
			var kris_actor = cutscene_actor_get_instance(Actors.Kris)
			with kris_actor {
				realobject.x = x
				realobject.y = y
			}
			cmd_dialogue_play("cutscener_test_battle")
		})
		array_push(alarms,alarm1)
		array_push(alarms,alarm2)
		time_source_start(alarm1)
		time_source_start(alarm2)
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 1{
			snd_play(snd_break2,1.25)
			var alarm1 = time_source_create(tsg,65,tsuf,function(){
				var froggit_actor = cutscene_actor_get_instance(Actors.Froggit)
				with obj_cutscener_test_1_3 {
					alarm[0] = 1
					array_push(global.normalbattle_enemyinst,obj_testnpc_enemy_battle)
					array_push(global.normalbattle_enemyinst,obj_testnpc_enemy_battle)
					array_push(global.normalbattle_enemyinst,obj_testnpc_enemy_battle)
					instance_create(0,0,obj_normal_battler)
					show_debug_message(global.normalbattle_enemyinst)
					show_debug_message($"LEN: {len(global.normalbattle_enemyinst)}")
					for (var i = 0; i < len(global.normalbattle_enemyinst); i++) {
						if object_exists(global.normalbattle_enemyinst[i]) {
							var enemier = instance_create(froggit_actor.x,froggit_actor.y,global.normalbattle_enemyinst[i])
							enemier.depth = obj_hero_kris.depth
							
							show_debug_message($"SPAWNED: {enemier.stats.name}")
							global.normalbattle_enemyinst[i] = enemier
						}
					}
				}
			})
			array_push(other.alarms,alarm1)
			time_source_start(alarm1)
			con += 0.1
		}
		
	}
}
visible = !global.cutscene