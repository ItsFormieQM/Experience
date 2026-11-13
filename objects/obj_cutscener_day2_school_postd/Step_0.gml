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
		
		var alarm1 = time_source_create(tsg,120,tsuf,function(){
			var kris_actor = cutscene_actor_get_instance(Actors.Kris)
			cutscene_actor_create(obj_susie_actor,kris_actor.x+450,kris_actor.y-8)
			var susie = cutscene_actor_get_instance(Actors.Susie)
			cutscene_actor_set_direction_sprites(
				susie,
				spr_susie_u,
				spr_susie_bangs_walkd,
				spr_susie_bangs_walkl,
				spr_susie_bangs_walkr
			)
			
			cutscene_move_camera(Right,100,4)
			cutscene_actor_walk(susie,Left,4,65)
		})
		var alarm2 = time_source_create(tsg,120+160,tsuf,function(){
			var kris = cutscene_actor_get_instance(Actors.Kris)
			var susie = cutscene_actor_get_instance(Actors.Susie)
			with player {
				player.x = kris.x
				player.y = kris.y
			}
			cutscene_actor_set_visibility(kris,false)
			cutscene_actor_set_visibility(susie,false)
			global.cbattlemus[0] = new CustomBattleMusicData(mus_battle_rkb,1) 
			array_push(global.normalbattle_enemyinst,obj_susie_enemy)
				
			instance_create(0,0,obj_normal_battler,{skipintro: false})
			sdm(global.normalbattle_enemyinst)
			sdm($"LEN: {len(global.normalbattle_enemyinst)}")
			for (var i = 0; i < len(global.normalbattle_enemyinst); i++) {
				if object_exists(global.normalbattle_enemyinst[i]) {
					var enemier = instance_create(susie.x,susie.y,global.normalbattle_enemyinst[i])
					enemier.depth = obj_hero_kris.depth
					
					sdm($"SPAWNED: {enemier.stats.name}")
					global.normalbattle_enemyinst[i] = enemier
				}
			}
		})
		cutscene_start_alarm(alarm1)
		cutscene_start_alarm(alarm2)
	}
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 1 {
			
		}
	}
	
}
