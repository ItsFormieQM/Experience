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
		mus_fade(120,0)
		executed = true
		global.msg[0] = "#t000^002#fnt001* An ad will play in 5 seconds."
		scr_normaltextoffset()
		instance_create(0,0,obj_drawer)
		var alarm1 = cutscene_create_timer(60*5,function(){
			with obj_cutscene_test_whataexoticzoo {
				fade = true
				global.interacted = true
			}
		})
		cutscene_start_alarm(alarm1)
	}
	
}
if fade {
	if !i_exists(obj_fader_menu) {
		instance_create(camx_ab,camy_ab,obj_fader_menu)
	}
	if i_exists(obj_fader_menu) {
		with obj_fader_menu {
			if image_alpha < 1 {
				incrementor = -0.02
				sdm("add")
			}
			else {
				sdm("stopped")
				with obj_cutscene_test_whataexoticzoo {
					fade = false
					obj_fader_menu.image_alpha = 1
					con = 1
				}
			}
		}
	}
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 1 {
			con += 0.1
			var alarm1 = cutscene_create_timer(240,function(){
				var thing = scr_start_video(working_directory+"video/zoo.mp4",0,0)
				with thing {
					depth = obj_fader_menu.depth - 100
					owner = other.id
				}
			})
			cutscene_start_alarm_other(alarm1)
		}
		if con == 2 {
			con += 0.1
			with obj_fader_menu {
				incrementor = 0.05
				image_alpha = 0.99
			}
			other.alarm[0] = 100
		}
	}
}
visible = !global.cutscene