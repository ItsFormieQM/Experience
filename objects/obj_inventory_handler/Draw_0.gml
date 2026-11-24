if astate {
	var sett = draw_get_settings()
	var cx = camx_ab
	var cy = camy_ab
	var scoffer = 5
	draw_set_colour(c_white)
	
	draw_rectangle((16*2 + cx), (16*2 + cy), (86*2 + cx)+12, (70*2 + cy),false)
	draw_rectangle((16*2 + cx), (74*2 + cy), (86*2 + cx)+12, (147*2 + cy)+36,false)
	
	draw_set_color(c_black)
	draw_rectangle((19*2 + cx), (19*2 + cy), (83*2 + cx)+12, (67*2 + cy),false)
	draw_rectangle((19*2 + cx), (77*2 + cy), (83*2 + cx)+12, (144*2 + cy)+36,false)
	draw_set_font(fnt_mainsmall)
	draw_set_colour(c_white)
	draw_text(23*2+cx,(20*2+cy)+4,"Kris")
	draw_set_font(fnt_cryptsmall)
	var lvpos = 23*2 + cx + string_width("LV  ")
	draw_text(23*2 + cx, 40*2 + cy, "LV")
	draw_text(lvpos, 40*2 + cy, string(global.lv))
	draw_text(23*2 + cx, 49*2 + cy, "HP")
	draw_text(lvpos, 49*2 + cy, string(global.hp[0]) + "/" + string(global.maxhp[0]))
	draw_set_font(fnt_main_battletxt)
	draw_text(42*2 + cx, 84*2 + cy, "ITEM")
	draw_text(42*2 + cx, 102*2 + cy, "STAT")
	draw_text(42*2 + cx, 120*2 + cy, "CELL")
	draw_text(42*2 + cx, 138*2 + cy, "SETT")
	draw_sprite_ext(
		spr_small_heart,
		0,
		(42*2) - sprite_get_width(spr_small_heart),
		((84+(first_menu_i*18))*2) + sprite_get_height(spr_small_heart),
		1,
		1,
		
		0,
		c_white,
		1
	)
	draw_set_settings(sett)
}