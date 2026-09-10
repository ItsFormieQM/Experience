if image_alpha < 1 & !ran{
	image_alpha += rate
}
if image_alpha >= 1 {
	done = true	
	ran = true
}
if done {
	x = obj_mainchara.x
	y = obj_mainchara.y
}
if fadeout {
	image_alpha -= fadeout_rate
}
x = obj_mainchara.x
y = obj_mainchara.y
if image_alpha <= 0 {
	instance_destroy()
}

