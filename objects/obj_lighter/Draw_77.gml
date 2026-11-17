if !i_exists(obj_battle_default_bg) || obj_battle_default_bg.image_alpha < 1 {
	if !surface_exists(darksurf) {
		darksurf = surface_create(guiw,guih)
	}
	surface_set_target(darksurf)
	draw_clear_alpha(c_black,1)
	gpu_set_blendmode(bm_subtract)
	draw_set_colour(c_white)
	draw_circle(
	    (player.x - camx_ab) * (guiw / camw_ab),
	    (player.y - camy_ab) * (guih / camh_ab),
	    80,
	    false
	)
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	draw_surface(darksurf,0,0)
}
else {
	if surface_exists(darksurf) {
		surface_free(darksurf)
		darksurf = -1
	}
}