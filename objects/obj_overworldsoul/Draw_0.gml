draw_self()
if lightup {
	gpu_set_fog(true,colour,0,1)
	if asset_get_index(csprite) != -1 {
		draw_sprite_ext(
			csprite,
			0,
			x,
			y,
			image_xscale,
			image_yscale,
			0,
			c_white,
			num
		)
	}
	gpu_set_fog(false,c_black,0,1)
}