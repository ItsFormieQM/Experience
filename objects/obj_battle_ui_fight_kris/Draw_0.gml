if !downstate {
	linecounter--
	if linecounter < 0 {
		linecounter = sprite_get_number(spr_kris_lw_battle_uiline) - 1
	}
	draw_sprite(spr_kris_lw_battle_uiline,floor(linecounter/2),x,y+18)
}
draw_self()
