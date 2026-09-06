if place_meeting(x,y,obj_mainchara) {
	if !ran {
		global.canmove = false
		instance_create_layer(0,0,"TECHNICAL",obj_fade_warp)
		obj_fade_warp.rate = fade_rate
		obj_fade_warp.fadeout_rate = fadeout_rate
		alarm[0] = 20
		ran = true
		obj_mainchara.image_index = 0
	}
}