draw_self()
var oldsett = draw_get_settings()
if inventory_state >= Inventory_State.active_firstchoice {
	var myx = camx_ab
	var myy = camy_ab
	
	var idealx = myx + 60
	var idealy = myy + 100
	draw_set_colour(c_white)
	draw_rectangle(idealx,idealy,idealx + 200, idealy + 280,false)
	draw_set_colour(c_black)
	var scale = 5
	draw_rectangle(idealx + scale,idealy + scale,idealx + 200 - scale, idealy + 280 - scale, false)
	draw_set_colour(c_white)
	draw_set_font(fnt_main_small)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text(idealx + 96, idealy + 30,scr_gettext("menu_information"))
	draw_set_settings(oldsett)
}
draw_set_settings(oldsett)
