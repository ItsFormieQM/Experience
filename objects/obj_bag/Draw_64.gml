var _sett = draw_get_settings()
draw_sprite(
	spr_bag,
	0,
	624,
	0
)

draw_set_font(fnt_main)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
if opened {
	draw_text(320,75,"INVENTORY")
	
}
draw_set_settings(_sett)