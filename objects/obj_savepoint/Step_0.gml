if place_meeting(x,y,obj_mainchara) && !obj_mainchara.occupied {
	with obj_save_menu {
		if visible {
			exit
		}
	}
	
	if global.interacted && !ran && !instance_exists(obj_drawer) {
		obj_mainchara.image_index = 0
		global.hp[0] = global.maxhp[0]
		if empty {
			with obj_save_menu {
				visible = true
			}
			snd_play(snd_heal,1.2)
			exit
		}
		scr_get_txt(dialogue_type,true)
		instance_create(0,0,obj_drawer)
		obj_mainchara.image_index = 0
		ran = true
		
		snd_play(snd_heal,1.2)
	}
	
	
}
if ran && !instance_exists(obj_drawer) {
	ran = false
	with obj_save_menu {
		visible = true
		global.canmove = false
		savepoint_id = id
	}
}
global.interacted = false


