if image_alpha < 1 {
	image_alpha += 0.4
}
sp = 10
if move_right {
	x += sp
}
else if move_left {
	x -= sp
}
else if move_up {
	y -= sp
}
else if move_down {
	y += sp
}
if x <= -100 {
	instance_destroy()
	
}