var settings = draw_get_settings()
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fnt_main_battletxt_small)
draw_text_transformed(
	camx_ab+(camw_ab/2),
	camy_ab+(camh_ab-20),
	scr_settext("Settings","menu_config_1"),
	2,
	2,
	0
)
draw_set_settings(settings)