image_alpha -= 0.08 / global.deltatime
if image_alpha <= 0 {
	instance_destroy()
}