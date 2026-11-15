if shudder {
	con++
	var range = 10
	if con % 4 == 0{
		sprite_index = hurtspr
		image_xscale = 1
		image_speed = 0
		x += shudder_amnt
		if (shudder_amnt < 0)
			shudder_amnt = (-((shudder_amnt + 2)))
		else
			shudder_amnt = (-shudder_amnt)
	}
	if con <= 60 || audio_is_playing(snd_enemy_damage){
		alarm[1] = 1
	}
	else if con > 60 && !audio_is_playing(snd_enemy_damage){
		if stats.hp <= 0 {
			
		}	
		image_xscale = -1
		sprite_index = ogspr
		con = 0
		shudder_amnt = 16
		x = xstart
		y = ystart
		image_speed = irandom_range(1,1.234)
		image_index = irandom(image_number-1)
	}
	
}