if (clap < 1)
	obj_mainchara.depth = layer_get_depth("TECHNICAL") + 1
if (heartdraw == 1)
	draw_sprite(spr_small_heart, 0, (obj_mainchara.x), (obj_mainchara.y))
