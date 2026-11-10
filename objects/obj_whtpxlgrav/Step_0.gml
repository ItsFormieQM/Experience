//timer++
if timer >= 45 {
	fadeout = true
}
if fadeout {
	image_alpha -= 0.01
	if image_alpha <= 0 {
		i_destroy()
	}
}