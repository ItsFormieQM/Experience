if place_meeting(x,y,obj_mainchara) && !obj_mainchara.occupied {
	if global.interacted && !ran && !instance_exists(obj_drawer){
		scr_get_txt(dialogue_type,true)
		instance_create(0,0,obj_drawer)
		obj_mainchara.image_index = 0
		ran = true
		
		snd_play(snd_heal,1.2)
	}
	
	
}
if ran && !instance_exists(obj_drawer) {
	ran = false
}
global.interacted = false


