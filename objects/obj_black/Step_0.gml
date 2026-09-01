if room == room_luzaro_beach_wharf {
	alpha -= rate
	if alpha <= 0 {
		instance_destroy()
	}
}

image_alpha = alpha