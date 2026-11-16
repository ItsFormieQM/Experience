if !shaking {
	x = xstart
	y = ystart
	exit
}
alarm[2] = pause_off
shake_strength *= -1
if shake_x {
	
	x += shake_strength
}
if shake_y {
	y += shake_strength
}