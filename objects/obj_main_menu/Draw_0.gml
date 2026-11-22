var settings = draw_get_settings()
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fnt_main_battletxt_small)
draw_set_colour(c_white)
setts = [
	{name: "Language: ", state: scr_translate_enum_lang(global.lang),func: scr_language_switcher},
	new Setting_Option("Fullscreen: ", boolstr(window_get_fullscreen()), ossafe_fs_switch()),
	new Setting_Option("Volume Multiplier: ",string(global.volnum)+"x",volume_changer) 
]
if opened_settings {
	draw_set_colour(c_white)
	draw_text_transformed(
		320,
		32,
		scr_settext("Settings","menu_config_2"),
		1.5,
		1.5,
		0
	)
	
	draw_rectangle(50,50,640-50,480-50,false)
	draw_set_colour(c_black)
	draw_rectangle(55,55,640-55,480-55,false)
	draw_set_colour(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_center)
	var _x = 92
	var _y = 84
	
	for (var i = 0; i < len(setts); i++) {
		draw_text_transformed(
			_x,
			_y+((_y-64)*(i)),
			setts[i].name +string(is_method(setts[i].state) ? method_call(setts[i].state) : setts[i].state),
			1.25,
			1.25,
			0
		)
		
	}
	draw_set_settings(settings)
	draw_sprite_ext(
		spr_small_heart,
		0,
		_x-sprite_get_width(spr_small_heart),
		_y+((_y-64)*(sett_i)),
		0.9,
		0.9,
		0,
		c_white,
		1
	)
	exit
}
if index == -666 {
	draw_set_colour(c_yellow)
}
draw_text_transformed(
	camx_ab+(camw_ab/2),
	camy_ab+(camh_ab-20),
	scr_settext("Settings","menu_config_2"),
	1.5,
	1.5,
	0
)

draw_set_settings(settings)