if image_alpha < 1 && !ran{
	image_alpha += rate
}
if image_alpha >= 1 {
	done = true	
	ran = true
}
if done {
	
}
if fadeout {
	image_alpha -= fadeout_rate
}


if image_alpha <= 0 {
	instance_destroy()
}

