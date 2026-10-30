if shudder {
	con++
	var range = 10
	if con % 4 == 0{
		sprite_index = hurtspr
		image_speed = 0
		x += shudder_amnt
		if (shudder_amnt < 0)
			shudder_amnt = (-((shudder_amnt + 2)))
		else
			shudder_amnt = (-shudder_amnt)
	}
	if con <= 60 {
		alarm[1] = 1
	}
	else {
		sprite_index = ogspr
		shudder = false
		x = xstart
		y = ystart
		image_speed = irandom_range(1,1.234)
		image_index = irandom(image_number-1)
	}
}