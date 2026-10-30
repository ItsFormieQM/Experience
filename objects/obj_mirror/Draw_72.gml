if !surface_exists(surf) {
	surf = surface_create(sprite_width,sprite_height)
}
surface_set_target(surf)
if i_exists(obj_mainchara) {
	draw_clear_alpha(c_black,0)
	var inverse_spr = obj_mainchara.sprite_index
	if obj_mainchara.sprite_index == spr_mainchara_u {
		inverse_spr = spr_mainchara_d
	}
	else if obj_mainchara.sprite_index == spr_mainchara_d {
		inverse_spr = spr_mainchara_u
	}
	
	var bg_id = layer_get_id("Background")
	var bg_element_id = layer_background_get_id(bg_id)
	var bg_spr = layer_background_get_sprite(bg_element_id)
	var xx = 0
	var yy = 0
	if !ran {
		ran = true
		show_debug_message(sprite_get_name(bg_spr))
	}	
	var scale = 28
	draw_sprite_ext(
		inverse_spr,
		obj_mainchara.image_index,
		obj_mainchara.x-x,
		(obj_mainchara.y-y)-scale,
		obj_mainchara.image_xscale,
		obj_mainchara.image_yscale,
		0,
		c_white,
		1
	)
	surface_reset_target()
	draw_sprite_ext(
		bg_spr,
		0,
		0-xx,
		(0-yy)-(sprite_height),
		1,
		1,
		0,
		c_white,
		1
	)	
}

draw_surface(surf,x,y)