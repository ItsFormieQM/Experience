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
		
		cutscene_actor_set_pos(kris_actor,774,396,false)
		
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
				
			var susie_actor = cutscene_actor_create(obj_susie_actor,0,0)
			cutscene_actor_set_pos(susie_actor,1295,kris_actor.y-8,false)
			cutscene_actor_show_emotion(kris_actor,Actor_Emotion.ExclamationMark,100)
			susie_actor = cutscene_actor_get_instance(Actors.Susie)
			cutscene_actor_set_direction(susie_actor,Right)
			cutscene_actor_set_sprite(susie_actor,spr_susie_bangs_eatchalk,0)
			
		})
		var alarm4 = time_source_create(tsg,100+65+85+130,tsuf,function(){
			var kris_actor = cutscene_actor_get_instance(Actors.Kris)
			cutscene_move_camera(Right,150,4)
			
			
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
					spr_susie_u,
					spr_susie_bangs_walkd,
					spr_susie_bangs_walkl,
					spr_susie_r
				)
				cutscene_actor_set_direction(susie,Left)
			})
			var alarm2 = time_source_create(tsg,100+30,tsuf,function(){
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_show_emotion(susie,Actor_Emotion.ExclamationMark,35)
				exit
				global.cbattlemus[0] = new CustomBattleMusicData(mus_battle_rb,1.5) 
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
			var alarm3 = time_source_create(tsg,100+30+100,tsuf,function(){
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_walk(susie,Left,2,100)
				with susie {
					onetimeanim = false
				}
			})
			var alarm4 = time_source_create(tsg,100+30+100+30,tsuf,function(){
				cutscene_move_camera(Left,150,2)
			})
			var alarm5 = time_source_create(tsg,100+30+100+30+200,tsuf,function(){
				global.msg[0] = scr_gettext("day2school_intro_1")
				global.msg[1] = scr_gettext("day2school_intro_2")
				global.msg[2] = scr_gettext("day2school_intro_3")
				//global.msg[3] = scr_gettext("day2school_intro_4")
				var display_scale = (surface_get_width(application_surface) / camera_get_view_width(cam))
				var finalx = (round((((88 * 4) + 0) * display_scale)) / display_scale)
				var finaly = 960 /2 + 85
				
				for (var i = 0; i < array_length(global.msg); i++) {
					global.xx_offset[i] = finalx - 32
					global.yy_offset[i] = finaly
					global.xx_offset_spriter[i] =( 35 + (sprite_get_width(spr_susie_bangs_face) / 3)) - 3
					global.yy_offset_spriter[i] = (175 * 2) - 6
				}
				instance_create(0,0,obj_drawer)
			})
			array_push(other.alarms,alarm1)
			array_push(other.alarms,alarm2)
			array_push(other.alarms,alarm3)
			array_push(other.alarms,alarm4)
			array_push(other.alarms,alarm5)
			tss(alarm1)
			tss(alarm2)
			tss(alarm3)
			tss(alarm4)
			tss(alarm5)
			con += 0.1
		}
		else if con == 2 {
			var alarm1 = time_source_create(tsg,85,tsuf,function(){
				
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_set_direction(susie,Up)
			})
			var alarm2 = time_source_create(tsg,60+85,tsuf,function(){
				
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_set_direction(susie,Left)
			})
			var alarm3 = time_source_create(tsg,60+85+60,tsuf,function(){
				
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_walk(susie,Left,60,)
			})
			tss(alarm1)
			ap(other.alarms,alarm1)
			con += 0.1
		}
	}
}
visible = !global.cutscene