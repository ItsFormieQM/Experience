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
		
		//cutscene_actor_set_pos(kris_actor,,true)
		
		var pink = cutscene_get_actor_instance(Actors.Pink)
		
		//cutscene_walk(kris_actor,Left,2.5,40)
		//var gasterer = cutscene_actor_create(obj_gaster_actor,kris_actor.x,kris_actor.y - 380)
		//var alarm1 = time_source_create(time_source_game,41,time_source_units_frames,function(){
		//	var kris_actor = cutscene_get_actor_instance(Actors.Kris)
		//	cutscene_walk(kris_actor,Up,1.95,40)
		//	cutscene_move_camera(Up,40,6)
		//})
		//var alarm2 = time_source_create(time_source_game,41+40,time_source_units_frames,function(){
		//	mus_play(mus_meeting_flower,true,1,0.85)
		//})
		//var alarm3 = time_source_create(time_source_game,41+45,time_source_units_frames,function(){
		//	global.msg = []
		//	var index = 0
		//	global.msg[index] = scr_gettext("gasterer_1")
		//	index++
		//	global.msg[index] = scr_gettext("gasterer_2")
		//	index++
		//	global.msg[index] = scr_gettext("gasterer_3")
		//	index++
		//	global.msg[index] = scr_gettext("gasterer_4")
		//	for (var i = 0; i < array_length(global.msg); i++) {
		//		global.xx_offset[i] = 68
		//		global.yy_offset[i] = 960 / 2 + 85
		//	}
		//	instance_create(0,0,obj_drawer)
		//})
		//array_push(other.alarms,alarm1)
		//array_push(other.alarms,alarm2)
		//array_push(other.alarms,alarm3)
		
		//time_source_start(alarm1)
		//time_source_start(alarm2)
		//time_source_start(alarm3)
		
		var alarm1 = time_source_create(time_source_game,41,time_source_units_frames,function(){
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			cutscene_walk(kris_actor,Up,1.95,15)
			
		})
		var alarm2 = time_source_create(time_source_game,41+15,time_source_units_frames,function(){
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			cutscene_actor_set_direction(kris_actor,Left)
		})
		var alarm3 = time_source_create(time_source_game,41+16,time_source_units_frames,function(){
			
			var kris_actor = cutscene_get_actor_instance(Actors.Kris)
			var pink_actor = cutscene_actor_create(obj_pink_actor,camx_ab - 150,kris_actor.y)
			cutscene_actor_set_direction_sprites(
				pink_actor,
				spr_pink_u,
				spr_pink_d,
				spr_pink_l,
				spr_pink_r
			)
			cutscene_actor_set_direction_sprites(
				kris_actor,
				spr_mainchara_l,
				spr_mainchara_l,
				spr_mainchara_l,
				spr_mainchara_l
			)
			cutscene_walk(pink_actor,Right,13,40)
			cutscene_walk(kris_actor,Right,3,40)
		})
		var alarm3_1 = time_source_create(time_source_game,41+16+40,time_source_units_frames,function(){
		
			var pink_actor = cutscene_get_actor_instance(Actors.Pink)
			
			
		
		})
		var alarm4 = time_source_create(time_source_game,41+21+40,time_source_units_frames,function(){
			
			mus_play(mus_japan_cafe,2,1)
			var pink_actor = cutscene_get_actor_instance(Actors.Pink)
			cutscene_actor_set_sprite(pink_actor,spr_pink_mad_lr,0)
			with pink_actor {
				image_speed = 1
			}
			
			//audio_sound_set_track_position(global.current_mus,14.3)
			global.msg = []
			var index = 0
			global.msg[index] = "#t000^000#fnt001^002* Hey, ^010^002yellow idiot!"
			index++
			global.msg[index] = "#t000^000#fnt001^002* I... ^010^002have something to tell you."
			index++
			global.msg[index] = "#t000^000#fnt001^002* This body... ^010^002it still...^/  ^010^002feels doki's for you."
			index++
			global.msg[index] = "#t000^000#fnt001^002* Look! ^010^002It's... ^010^002not like I want^/  this or anything, but..."
			index++
			global.msg[index] = "#t000^000#fnt001^002* Even someone like me can't...^/  ^010^002get in the way of true love."
			index++
			global.msg[index] = "#t000^000#fnt001^002* If... ^010^002it's for my body..."
			index++
			global.msg[index] = "#t000^000#fnt001^002^P* Let's date, ^010^002mew!"
			for (var i = 0; i < array_length(global.msg); i++) {
				global.xx_offset[i] = 68
				global.yy_offset[i] = 960 / 2 + 85
			}
			instance_create(0,0,obj_drawer)
		})
		array_push(alarms,alarm1)
		array_push(alarms,alarm2)
		array_push(alarms,alarm3)
		array_push(alarms,alarm3_1)
		array_push(alarms,alarm4)
		time_source_start(alarm1)
		time_source_start(alarm2)
		time_source_start(alarm3)
		time_source_start(alarm3_1)
		time_source_start(alarm4)
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		var pink = cutscene_get_actor_instance(Actors.Pink)
		var kris = cutscene_get_actor_instance(Actors.Kris)
		with obj_drawer {
			
			if count == 1 {
				count += 0.1
				
				cutscene_actor_set_sprite(pink,spr_pink_sad_lr,0)
			}
			else if count == 6 {
				count += 0.1
				cutscene_actor_set_sprite(pink,spr_pink_peacesign,0)
				snd_play(snd_pink_mew,1.2)
			}
		}
		if con == 1 {
			con = 1.1
			mus_fade(75,0)
			
			var alarm2 = time_source_create(time_source_game,120 + 30,time_source_units_frames,function(){
				
				global.msg = []
				var index = 0
				global.msg[index] = "#t000^000#fnt001^002^P* Wait,^020^002 is it just me or is^/  something coming towards us^/  in this direction?/E"
				for (var i = 0; i < array_length(global.msg); i++) {
					global.xx_offset[i] = 68
					global.yy_offset[i] = 960 / 2 + 85
				}
				instance_create(0,0,obj_drawer)
			})
			
			array_push(other.alarms,alarm2)
			
			time_source_start(alarm2)
		}
		else if con == 2 {
			con += 0.1
			
			var alarm1 = time_source_create(time_source_game,50,time_source_units_frames,function(){
				var pink = cutscene_get_actor_instance(Actors.Pink)
				var gaster = cutscene_actor_create(obj_gaster_actor,camx_ab - 200,pink.y)
				cutscene_actor_set_sprite(pink,spr_pink_suprised,0)
				snd_play(snd_pink_gasp,1.2)
				with pink {
					image_xscale *= -1
				}
				cutscene_walk(gaster,Right,18,32)
				snd_play(snd_driving,1.2)
			})
			var alarm2 = time_source_create(time_source_game,120,time_source_units_frames,function(){
				mus_fade(100,1)
			})
			var alarm3 = time_source_create(time_source_game,50+33,time_source_units_frames,function(){
				var pink = cutscene_get_actor_instance(Actors.Pink)
				var exmrkr = cutscene_create_object_marker(pink.x,pink.y)
				with exmrkr {
					sprite_index = spr_realistic_explosion
				}
				snd_play(snd_realistic_explosion,1.2)
				with pink {
					hspeed = 18
					vspeed = -18
				}
			})
			var alarm4 = time_source_create(time_source_game,120 + 20,time_source_units_frames,function(){
				
				global.msg = []
				var index = 0
				global.msg[index] = "#t004^000#fnt001^002* This is way too overboard.^/^020^002* The creator might get in^/  trouble if someone sees this.../E"
				index++
				global.msg[index] = "#t004^000#fnt001^002* So I had to cancel whatever^/  intention you're planning to do^/  with her./E"
				index++
				global.msg[index] = "#t004^000#fnt001^002* Besides. ^020^002You are in a debug^/  test cutscene room./E"
				index++
				global.msg[index] = "#t004^000#fnt001^002* So you're not supposed to be^/  here./E"
				index++
				global.msg[index] = "#t004^000#fnt001^002^W* Go back to where to came^/  from... ^RPLAYER^W./E"
				for (var i = 0; i < array_length(global.msg); i++) {
					global.xx_offset[i] = 68
					global.yy_offset[i] = 960 / 2 + 85
				}
				instance_create(0,0,obj_drawer)
			})
			
			array_push(other.alarms,alarm1)
			array_push(other.alarms,alarm2)
			array_push(other.alarms,alarm3)
			array_push(other.alarms,alarm4)
			time_source_start(alarm1)
			time_source_start(alarm2)
			time_source_start(alarm3)
			time_source_start(alarm4)
		}
		else if con == 3 {
			with obj_cutscener_test_1 {
				mus_fade(60,0)
				alarm[0] = 80
			}
			var gaster = cutscene_get_actor_instance(Actors.Gaster)
			cutscene_follow_camera(kris,0.25)
			cutscene_walk(gaster,Left,34,200)
			con += 0.1
		}
	}
}
visible = !global.cutscene