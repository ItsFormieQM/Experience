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
		var i = 0
		global.msg[i] = scr_settext("#t000^002#fnt001* Left alone in complete^/  darkness...","drw_forestnight_1")
		i++
		global.msg[i] = scr_settext("#t000^002#fnt001* All you can do is close your^/  eyes...","drw_forestnight_2")
		i++
		global.msg[i] = scr_settext("#t000^002#fnt001* And let your instinct guide^/  you along the path...","drw_forestnight_3")
		i++
		scr_normaltextoffset()
		instance_create(0,0,obj_drawer)
	}
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 1 {
			var alarm1 = cutscene_create_timer(120,function(){
				snd_play(snd_change)
				var kriss = cutscene_actor_get_instance(Actors.Kris)
				with kriss {
					depth = player.depth
				}
				
			})
			var alarm2 = cutscene_create_timer(120+100,function(){
				var souler = instance_create(player.x,player.y,obj_overworldsoul)
				with souler {
					csprite = spr_soul_battle_white
					image_alpha = 0
					colour = none
				}
			})
			var alarm3 = cutscene_create_timer(120+225,function(){
				with obj_overworldsoul {
					colour = c_white
					lightup = true
				}
			})
			var alarm4 = cutscene_create_timer(120+225+200,function(){
				var func = function() {
					if !variable_instance_exists(id,"son") || is_undefined(son){
						son = 0
					}
					
					if son >= 0 {
						son++
					}
					with obj_lighter {
						pureblack = false
						manualthing = true
						ralph = other.son + 1
					}
					if son >= 100 {
						son = -1
						son = undefined
						with obj_cutscene_controller {
							con = floor(con) + 1
						}
						cutscene_function_remove(0)
					}
				}
				cutscene_function_add(
					func,
					0
				)
				
			})
			con += 0.1
			cutscene_start_alarm_other(alarm1)
			cutscene_start_alarm_other(alarm2)
			cutscene_start_alarm_other(alarm3)
			cutscene_start_alarm_other(alarm4)
		}
		else if con == 2 {
			var i = 0
			global.msg[i] = scr_settext("#t000^002#fnt001^W* Your ^RSOUL^W lit up!","drw_forestnight_3")
			scr_normaltextoffset()
			instance_create(0,0,obj_drawer)
			con += 0.1
			
		}
		else if con == 3 {
			con += 0.1
			other.alarm[0] = 75 
		}
	}
	
}

