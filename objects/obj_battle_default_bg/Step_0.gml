var incrementor = 0.075
if !fadeout {
	if image_alpha < 1 {
		image_alpha += incrementor
	}
}
else {
	image_alpha -= incrementor
	if image_alpha < 0 {
		i_destroy()
	}
}