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
		
		var aqua = cutscene_actor_create(obj_aqua_actor,kris_actor.x,kris_actor.y)
		
		cutscene_actor_set_pos(kris_actor,kris_actor.x - 1095,kris_actor.y,false)
		cutscene_actor_set_visibility(kris_actor,false)
		var kris_larper = cutscene_actor_create(obj_pink_actor,kris_actor.x,kris_actor.y)
		with kris_larper {
			image_xscale *= 2
			image_yscale *= 2
		}
		cutscene_actor_set_direction_sprites(kris_larper,
			spr_mainchara_u,
			spr_mainchara_d,
			spr_mainchara_l,
			spr_mainchara_r
		)
		cutscene_actor_set_direction(kris_larper,Up)
		cutscene_actor_walk(aqua,Left,4,150)
		var alarm1 = time_source_create(time_source_game,151,time_source_units_frames,function(){
			var aqua = cutscene_get_actor_instance(Actors.Aqua)
			cutscene_actor_show_emotion(aqua,Actor_Emotion.ExclamationMark,2)
			cutscene_actor_set_sprite(aqua,spr_aqua_dance1,0)
			with aqua {
				image_speed = 1
			}
		})
		var alarm2 = time_source_create(time_source_game,151 + 120,time_source_units_frames,function(){
			cutscene_move_camera(Left,150 + 60,4)
		})
		var alarm3 = time_source_create(time_source_game,151 + 120 + 230,time_source_units_frames,function(){
			global.msg = []
			i = 0
			global.msg[i] = "#t000^000#fnt001^002^A^.   Uuuu... ^010^002A fellow human!"
			i++
			global.msg[i] = "#t000^000#fnt001^002^A^.   Psst... ^010^002Human...^/^010^002   Do you wanna play a game?"
			i++
			global.msg[i] = "#t001^000#fnt001^002^A* Hmm... ^030^002A game... ^020^002Interesting..."
			i++
			global.msg[i] = "#t000^000#fnt001^002^A^.   Uuuu... ^010^002Yes yes yes! ^020^002A game!"
			i++
			global.msg[i] = "#t001^000#fnt001^002^A* Hmm... ^020^002Sure! ^020^002But first I want^/  something from you..."
			i++
			global.msg[i] = "#t000^000#fnt001^002^A^.   Uuuu... ^010^002I wonder what it is..."
			for (var j = 0; j < len(global.msg); j++) {
				
				global.xx_offset[j] = 68
				global.yy_offset[j] = 960 / 2 + 85
			
			}
			instance_create(0,0,obj_dialogue)
			instance_create(0,0,obj_drawer)
			mus_play(mus_meeting_flower,1,1,0.9)
		})
		array_push(alarms,alarm1)
		array_push(alarms,alarm2)
		array_push(alarms,alarm3)
		time_source_start(alarm1)
		time_source_start(alarm2)
		time_source_start(alarm3)
	}
	
}
if global.cutscene {
	with obj_drawer {
		if count == 5 {
			count += 0.1
			var aqua = cutscene_get_actor_instance(Actors.Aqua)
			cutscene_actor_set_sprite(aqua,spr_aqua_laughing,0)
			with aqua {
				image_speed = 1
			}
		}
	}
	with obj_cutscene_controller {
		if con == 1 {
			//cutscene_move_camera()
			
			mus_fade(110,0)
			var alarm1 = time_source_create(time_source_game,150,time_source_units_frames,function(){
				var kris = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction(kris,Right)
				cutscene_actor_set_sprite(kris,spr_kris_evil_knife_out,0)
				snd_play(snd_land)
			})
			var alarm2 = time_source_create(time_source_game,151 + 50,time_source_units_frames,function(){
				var kris = cutscene_get_actor_instance(Actors.Pink)
				
				cutscene_actor_set_sprite(kris,spr_kris_evil_knife_out,0)
				var aqua = cutscene_get_actor_instance(Actors.Aqua)
				cutscene_actor_set_sprite(aqua,spr_aqua_concerned,0)
				with kris {
					image_speed = 1
					onetimeanim = true
				}
				show_debug_message("ran")
			})
			
			var alarm3 = time_source_create(time_source_game,151 + 170,time_source_units_frames,function(){
				mus_fade(35,0.7)
				audio_sound_pitch(global.current_mus,0.3)
				
				global.msg = []
				i = 0
				global.msg[i] = "#t001^000#fnt001^002^A* I want those ^RLV^A of yours child."
				i++
				global.msg[i] = "#t000^000#fnt001^002^A^.   Uhhhh... ^030^002I don't... feel so^/   ^020^002comfortable with that..."
				for (var j = 0; j < len(global.msg); j++) {
				
					global.xx_offset[j] = 68
					global.yy_offset[j] = 960 / 2 + 85
			
				}
			
				instance_create(0,0,obj_drawer)
			})
			
			array_push(other.alarms,alarm1)
			array_push(other.alarms,alarm2)
			array_push(other.alarms,alarm3)
			time_source_start(alarm1)
			time_source_start(alarm2)
			time_source_start(alarm3)
			con += 0.1
			
			
		}
		else if con == 2 {
			var i = 30
			var alarm1 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm2 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm3 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm4 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm5 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm6 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm7 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			var alarm8 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
				global.msg = []
				i = 0
				global.msg[i] = "#t001^000#fnt001^002^A* You know what I mean dumbass.^/^020^002* Now ^RDIE^A."
				//i++
				//global.msg[i] = "#t000^000#fnt001^002^A^.   Uhhhh... ^030^002I don't... feel so^/   ^020^002comfortable with that..."
				for (var j = 0; j < len(global.msg); j++) {
				
					global.xx_offset[j] = 68
					global.yy_offset[j] = 960 / 2 + 85
			
				}
			
				instance_create(0,0,obj_drawer)
			})
			i += 60
			var alarm9 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm10 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm11 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm12 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm13 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm14 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			var alarm15 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm16 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm17 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm18 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,50)
				var darkner = instance_create(camx_ab,camy_ab,obj_fader_menu) 
				with darkner {
					snd_play(snd_change)
					mus_fade(1,0)
					instance_destroy(obj_drawer)
					image_alpha = 1
					incrementor = 0
				}
			})
			i += 100
			var alarm19 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				snd_play(snd_vaporized,2)
			})
			i += 60
			var alarm20 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			i += 60
			var alarm21 = time_source_create(time_source_game,i,time_source_units_frames,function(){
				var kris_larper = cutscene_get_actor_instance(Actors.Pink)
				cutscene_actor_set_direction_sprites(kris_larper,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr,
					spr_kris_evil_knife_walkr
				)
				with kris_larper {
					switched_sprite = false
				}
				cutscene_walk(kris_larper,Right,3,10)
			})
			con += 0.1
			show_debug_message($"CON VAR {con}")
			array_push(other.alarms,alarm1)
			array_push(other.alarms,alarm2)
			array_push(other.alarms,alarm3)
			array_push(other.alarms,alarm4)
			array_push(other.alarms,alarm5)
			array_push(other.alarms,alarm6)
			array_push(other.alarms,alarm7)
			array_push(other.alarms,alarm8)
			array_push(other.alarms,alarm9)
			array_push(other.alarms,alarm10)
			array_push(other.alarms,alarm11)
			array_push(other.alarms,alarm12)
			array_push(other.alarms,alarm13)
			array_push(other.alarms,alarm14)
			array_push(other.alarms,alarm15)
			array_push(other.alarms,alarm16)
			array_push(other.alarms,alarm17)
			array_push(other.alarms,alarm18)
			array_push(other.alarms,alarm19)
			array_push(other.alarms,alarm20)
			array_push(other.alarms,alarm21)
			time_source_start(alarm1)
			time_source_start(alarm2)
			time_source_start(alarm3)
			time_source_start(alarm4)
			time_source_start(alarm5)
			time_source_start(alarm6)
			time_source_start(alarm7)
			time_source_start(alarm8)
			time_source_start(alarm9)
			time_source_start(alarm10)
			time_source_start(alarm11)
			time_source_start(alarm12)
			time_source_start(alarm13)
			time_source_start(alarm14)
			time_source_start(alarm15)
			time_source_start(alarm16)
			time_source_start(alarm17)
			time_source_start(alarm18)
			time_source_start(alarm19)
			time_source_start(alarm20)
			time_source_start(alarm21)
			u = 60
			ctr = 5
			
		
		}
		if keyboard_check_pressed(vk_shift) {
			show_debug_message($"CON VAR {con}")
		}
	}
}
visible = !global.cutscene
