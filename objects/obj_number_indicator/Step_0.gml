var incrementor = 0.1
if image_yscale < 0.8 {
	image_yscale += incrementor
}

if fadeout {
	incrementor = 0.06
	var floatier = 1
	
	image_yscale += incrementor
	image_alpha -= 0.0288
	y_offset -= floatier
}
alpha = image_alpha
if image_alpha <= 0 {
	instance_destroy()
}

