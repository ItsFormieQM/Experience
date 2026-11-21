if !i_exists(obj_battle_default_bg) || obj_battle_default_bg.image_alpha < 1 {
	if !surface_exists(darksurf) {
		darksurf = surface_create(guiw,guih)
	}
	surface_set_target(darksurf)
	draw_clear_alpha(c_black,1)
	gpu_set_blendmode(bm_subtract)
	draw_set_colour(c_white)
	var radius = player.sprite_width+player.sprite_height
	if !pureblack && !manualthing {
		draw_circle(
		    player.x-camx_ab,
		    player.y-camy_ab,
		    radius,
		    false
		)
	}
	else if !pureblack && manualthing {
		
		draw_circle(
		    obj_overworldsoul.x-camx_ab,
		    obj_overworldsoul.y-camy_ab,
		    ralph,
		    false
		)
	}
	if i_exists(player) {
		with player {
			//if dir == Left {
			//	draw_sprite_ext(
			//		spr_flashlightcone,
			//		0,
			//		(x)-camx_ab,
			//		y-camy_ab,
			//		-15,
			//		20.5,
			//		0,
			//		c_white,
			//		1
			//	)
			//}
			//else if dir == Right {
			//	draw_sprite_ext(
			//		spr_flashlightcone,
			//		0,
			//		(x)-camx_ab,
			//		y-camy_ab,
			//		15,
			//		20.5,
			//		0,
			//		c_white,
			//		1
			//	)
			//}
		}
	}
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	draw_surface(darksurf,camx_ab,camy_ab)
}
else {
	if surface_exists(darksurf) {
		surface_free(darksurf)
		darksurf = -1
	}
}