if place_meeting(x,y,obj_mainchara) && !global.cutscene && !global.flag[Flag.On_Battle]{
	var chancer = irandom_range(0,100)
	//if !secret {
	//	if chancer >= 0 {
	//		show_debug_message($"CHANCER: {chancer}")
	//		cmd_warp(room_dih,1)
	//		secret = true
			
	//	}
	//}
	if !ran {
		if snd != noone {
			audio_stop_sound(snd)
			snd_play(snd,1.2)
		}
		global.canmove = false
		instance_create_layer(0,0,"TECHNICAL",obj_fade_warp)
		obj_fade_warp.rate = fade_rate / global.deltatime
		obj_fade_warp.fadeout_rate = fadeout_rate / global.deltatime
		alarm[0] = 20 * global.deltatime
		ran = true
		obj_mainchara.image_index = 0
	}
}
