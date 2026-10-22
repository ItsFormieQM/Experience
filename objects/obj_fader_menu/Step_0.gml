if image_alpha > 0 {
	image_alpha -= incrementor / global.deltatime
}
if image_alpha <= 0 {
	instance_destroy()
}