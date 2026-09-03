if room == room_luzaro_beach_wharf {
	alpha -= rate
	if alpha <= 0 {
		instance_destroy()
	}
}
if instance_exists(obj_mainchara) {
	x = obj_mainchara.x + (self.sprite_width / 2)
	y = obj_mainchara.y + (self.sprite_height / 2)
}
image_alpha = alpha