var kris_actor = cutscene_get_actor_instance(Actors.Kris)
if didnt {
	exit
}
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
		cutscene_follow_camera(kris_actor,100)
		var alarm1 = time_source_create(tsg,100,tsuf,function(){
			global.msg = []
			var index = 0
			global.msg[index] = "#t000^002* This is a debug room."
			index++
			global.msg[index] = "#t000^002^W* Named ^YLuzaro Beach Wharf^W."
			index++
			
			global.msg[index] = "#t000^002* Or in the game files...^/^010^002* It's named... ^/  room_luzaro_beach_wharf"
			index++
			global.msg[index] = "#t000^002* The developer left the entry^/  point to this room open for^/  discovery intentionally."
			index++
			global.msg[index] = "#t000^002* Though this is not suited for^/  the true release, ^010^002of course."
			index++
			global.msg[index] = "#t000^002* ..."
			index++
			global.msg[index] = "#t000^002* Oh, ^010^002and also!"
			index++
			global.msg[index] = "#t000^002* There will be 3 enemies waiting^/  for you down there."
			index++
			global.msg[index] = "#t000^002* And don't touch them."
			index++
			global.msg[index] = "#t000^002* ...^010^002 Why you may ask?"
			index++
			global.msg[index] = "#t000^002* ..."
			index++
			global.msg[index] = "#t000^002* Well, ^010^002You're gonna be stuck in a^/  endless battle that won't end^/  yet..."
			index++
			global.msg[index] = "#t000^002^W* ... ^010^002Good luck, ^RPLAYER^W"
			for (var i = 0; i < len(global.msg); i++) {
				global.xx_offset[i] = 68
				global.yy_offset[i] = 960 / 2 + 85
			}
			instance_create(0,0,obj_drawer)
		})
		array_push(alarms,alarm1)
		time_source_start(alarm1)
	}
	
}
if global.cutscene {
	with obj_cutscene_controller {
		if con == 1 {
			con += 0.1
			other.alarm[0] = 1
			var enem = obj_testnpc_enemy_overworld
			if i_exists(enem) {
				repeat 2 {
					var enemier = instance_create(enem.x+random_range(-30,30),enem.y,enem)	
					enemier.depth = enem.depth
				}	
			}
		}
	}
}
visible = !global.cutscene