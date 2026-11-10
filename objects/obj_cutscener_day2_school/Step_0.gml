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
			global.flag[Flag.Story_FightingSusie_1] = true
		})
		var alarm2 = time_source_create(tsg,100+65,tsuf,function(){
			var kris_actor = cutscene_actor_get_instance(Actors.Kris)
			cutscene_actor_walk(kris_actor,Right,3,65)
			scr_tempsave(0)
		})
		var alarm3 = time_source_create(tsg,100+65+85,tsuf,function(){
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
				
			var susie_actor = cutscene_actor_create(obj_susie_actor,0,0)
			cutscene_actor_set_pos(susie_actor,1295-8,kris_actor.y-7,false)
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
				cutscene_actor_walk(susie,Left,2,45)
			})
			var alarm4 = time_source_create(tsg,60+85+60+65,tsuf,function(){
				var kris_actor = cutscene_actor_get_instance(Actors.Kris)
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_set_pos(susie,948,172,false)
				cutscene_actor_set_visibility(kris_actor,false)
				cutscene_actor_set_sprite(susie,spr_susie_bangs_krispickup,0)
				with susie {
					
					image_speed = 1
					onetimeanim = true
				}
				
			})
			var alarm5 = time_source_create(tsg,60+85+60+65+100,tsuf,function(){
				
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_set_pos(susie,susie.x+9,susie.y,false)
				snd_play(snd_change,1.2)
				
			})
			var alarm6 = time_source_create(tsg,60+85+60+65+100+5,tsuf,function(){
				
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_set_pos(susie,susie.x-9,susie.y,false)
				
			})
			var alarm7 = time_source_create(tsg,60+85+60+65+100+80,tsuf,function(){
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_set_sprite(susie,spr_susie_bangs_krispickup_1_2,0)
			})
			var alarm8 = time_source_create(tsg,60+85+60+65+100+80+75,tsuf,function(){
				var kris = cutscene_actor_get_instance(Actors.Kris)
				kris = cutscene_actor_create(obj_pink_actor,kris.x,kris.y)
				cutscene_actor_set_direction_sprites(
					kris,
					spr_mainchara_u,
					spr_mainchara_d,
					spr_mainchara_l,
					spr_mainchara_r
				)
				var susie = cutscene_actor_get_instance(Actors.Susie)
				with susie {
					switched_sprite = false
				}
				cutscene_actor_set_sprite(susie,spr_susie_shock,0)
				
				cutscene_actor_set_pos(susie,1001,221,false)
				cutscene_actor_set_visibility(kris,true)
				cutscene_actor_set_sprite(kris,spr_kris_sd_knifeout,7)
				snd_play(snd_battleswing,1.2)
				snd_play(snd_sussuprised,1.2)
				snd_play(snd_critswing,1.2)
				with kris {
					onetimeanim = true
					image_speed = 3.5
					image_xscale *= 2
					image_yscale *= 2
					image_xscale *= -1
					
				}
				with susie {
					xstart = x
					ystart = y
					hspeed = 12.5
					friction = 0.5
				}
				cutscene_actor_set_direction_sprites(susie,
					noone,
					noone,
					spr_susie_bangs_walkl_unhappy,
					noone
				)
			})
			var alarm9 = time_source_create(tsg,60+85+60+65+100+80+140,tsuf,function(){
				var kris = cutscene_actor_get_instance(Actors.Kris)
				var susie = cutscene_actor_get_instance(Actors.Susie)
				var dmger = instance_create(susie.xstart+35,susie.ystart,obj_damage_writer,{damage: -1})
				
			})
			var alarm10 = time_source_create(tsg,60+85+60+65+100+80+140+80,tsuf,function(){
				var kris = cutscene_actor_get_instance(Actors.Pink)
				
				cutscene_actor_set_sprite(kris,spr_kris_sd_knifeout_reverse,6)
				with kris {
					
					image_speed = 1.25
					onetimeanim = true
				}
				var susie = cutscene_actor_get_instance(Actors.Susie)
				with susie {
					switched_sprite = false	
				}	
				snd_play(snd_change,1.2)
				
			})
			var alarm11 = time_source_create(tsg,60+85+60+65+100+80+140+80,tsuf,function(){
				global.msg[0] = scr_gettext("day2school_intro_4")
				global.msg[1] = scr_gettext("day2school_intro_5")
				global.msg[2] = scr_gettext("day2school_intro_6")
				for (var i = 0; i < len(global.msg);i++) {
					global.xx_offset[i] =68
					
				}
				with obj_cutscener_day2_school {
					song[0] = new_mus_play(mus_battletense,0.9)
				}
				
				instance_create(0,0,obj_drawer)
			})
			
			tss(alarm1)
			tss(alarm2)
			tss(alarm3)
			cutscene_start_alarm_other(alarm4)
			cutscene_start_alarm_other(alarm5)
			cutscene_start_alarm_other(alarm6)
			cutscene_start_alarm_other(alarm7)
			cutscene_start_alarm_other(alarm8)
			cutscene_start_alarm_other(alarm9)
			cutscene_start_alarm_other(alarm10)
			cutscene_start_alarm_other(alarm11)
			ap(other.alarms,alarm1)
			ap(other.alarms,alarm2)
			ap(other.alarms,alarm3)
			sdm($"lenght of alarms: {len(other.alarms)} ")
			con += 0.1
		}
		else if con == 3 {
			con += 0.1
			var kris = cutscene_actor_get_instance(Actors.Pink)
			sdm("runn")
			with kris {
				image_xscale *= -1
				switched_sprite = false
			}
			
			cutscene_actor_walk(kris,Right,2,10)
			var alarm1 = time_source_create(tsg,40,tsuf,function(){
				var kris = cutscene_actor_get_instance(Actors.Pink)
				var susie = cutscene_actor_get_instance(Actors.Susie)
				with susie {
					switched_sprite = false
				}
				cutscene_actor_set_direction_sprites(
					kris,
					spr_mainchara_d,
					noone,
					noone,
					noone
				)
				with kris {
					xstart = x
					ystart = y
				}
				cutscene_actor_walk(kris,Up,2,10)
				cutscene_actor_set_sprite(susie,spr_susie_attack,0)
				with susie {
					image_xscale *= -1
					image_speed = 1
					onetimeanim = true
				}
				
				snd_play(snd_battleswing,1.2)
			})
			var alarm2 = time_source_create(tsg,40+40,tsuf,function(){
				var kris = cutscene_actor_get_instance(Actors.Pink)
				
				instance_create(kris.xstart,kris.ystart,obj_damage_writer,{damage: -666})
			})
			var alarm3 =time_source_create(tsg,40+70,tsuf,function(){
				var kris = cutscene_actor_get_instance(Actors.Pink)
				cutscene_actor_walk(kris,Down,2,10)
				
			})
			var alarm4 =time_source_create(tsg,40+70+11,tsuf,function(){
				var kris = cutscene_actor_get_instance(Actors.Pink)
				var susie = cutscene_actor_get_instance(Actors.Susie)
				cutscene_actor_set_sprite(susie,spr_susie_b_idle,0)
				cutscene_actor_set_direction(kris,Right)
				snd_play(snd_change,1.2)
			})
			var alarm5 =time_source_create(tsg,40+70+40,tsuf,function(){
				
				
				global.msg[0] = scr_gettext("day2school_intro_7")
				global.msg[1] = scr_gettext("day2school_intro_8")
				global.msg[2] = scr_gettext("day2school_intro_9")
				global.msg[3] = scr_gettext("day2school_intro_10")
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
			var idkfunc = function() {
				if i_exists(obj_drawer) {
					with obj_drawer {
						if count >= 3 {
							with obj_cutscener_day2_school{
								sdm(song)
								new_mus_free(song[0])
								
							}
							
							cutscene_function_remove(0)
						}
					}
				}
			}
			
			cutscene_function_add(idkfunc,0)
			cutscene_start_alarm_other(alarm1)
			cutscene_start_alarm_other(alarm2)
			cutscene_start_alarm_other(alarm3)
			cutscene_start_alarm_other(alarm4)
			cutscene_start_alarm_other(alarm5)
		}
		else if con == 4 {
			con += 0.1
			var kris = cutscene_actor_get_instance(Actors.Pink)
			with kris {
				switched_sprite = false
				onetimeanim = false
			}
			cutscene_actor_set_direction_sprites(
				kris,
				spr_mainchara_u,
				noone,
				spr_mainchara_r,
				spr_mainchara_r
			)
			cutscene_actor_walk(kris,Left,3,40)
			snd_play(snd_break2,1.2)
			var alarm2 = time_source_create(tsg,41,tsuf,function(){
				var kris = cutscene_actor_get_instance(Actors.Pink)
				with kris {
					image_index = 0
				}
			})
			var alarm1 = time_source_create(tsg,60+40,tsuf,function(){
				var kris = cutscene_actor_get_instance(Actors.Pink)
				var susie = cutscene_actor_get_instance(Actors.Susie)
				with player {
					player.x = kris.x
					player.y = kris.y
				}
				cutscene_actor_set_visibility(kris,false)
				cutscene_actor_set_visibility(susie,false)
				global.cbattlemus[0] = new CustomBattleMusicData(mus_battle_kr,1.3) 
				array_push(global.normalbattle_enemyinst,obj_susie_enemy)
				
				instance_create(0,0,obj_normal_battler,{skipintro: true})
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
			cutscene_start_alarm_other(alarm1)
		}
	}
	
}
visible = !global.cutscene