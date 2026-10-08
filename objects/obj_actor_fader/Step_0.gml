if reversed {
	image_alpha += incrementor
	if image_alpha >= 1 {
		instance_destroy()
		exit
	}
}
else {
	image_alpha -= incrementor
	if image_alpha <= 0 {
		instance_destroy()
		exit
	}
}