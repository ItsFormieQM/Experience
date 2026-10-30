if shudder {
	con++
	var range = 10
	if con % 4 == 0{
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
		shudder = false
		x = xstart
		y = ystart
		image_speed = 1
	}
}