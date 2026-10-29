var bcolor = 3350579
if (intro == 1) { // SLIDE UP
    if (bp < (bpy - 1))
    {
        if ((bpy - bp) < 40)
            bp += round((bpy - bp) / (2.5 / 2));
        else
            bp += 30 / 2;
    }
    else
    {
        bp = bpy;
    }
    
    if (bp == bpy)
        intro = 0;
}

if (intro == 2) { // SLIDEDOWN
    if (bp > 0) {
        if (round((bpy - bp) / 5) > 15)
            bp -= round((bpy - bp) / (2.5) / 2);
        else
            bp -= 30 / 2;
    }
    else
    {
        bp = 0;
    }
}

draw_set_color(c_black);
draw_rectangle(xx - 10, 481 + yy, xx + 700, ((480 - bp) + yy) - 4, false);
draw_set_color(bcolor);

draw_rectangle(xx - 10, (480 - bp - 3) + yy, xx + 700, (480 - bp - 2) + yy, false);
draw_set_color(bcolor);

draw_rectangle(xx - 10, (480 - bp) + 34 + yy, xx + 700, (480 - bp) + 36 + yy, false);
if sel_fight {
	show_debug_message($"ENEMY LEN: {len(global.normalbattle_enemyinst)}")
	if global.w_press {
		sel_fight_index++
	}
	else if global.s_press {
		sel_fight_index--
	}
	if sel_fight_index >= len(global.normalbattle_enemyinst) {
		sel_fight_index = 0
	}
	else if sel_fight_index <= -1 {
		sel_fight_index = len(global.normalbattle_enemyinst)- 1
	}
	var settings = draw_get_settings()
	draw_set_colour(c_white)
	draw_set_font(fnt_main_battletxt)
	
	for (var i = 0; i < len(global.normalbattle_enemyinst);i++) {
		draw_text_ext_transformed(
			0+camx_ab,
			20+camy_ab,
			global.normalbattle_enemyinst[i].stats.name,
			1,
			9999,
			0.8,
			0.8,
			0
		)
		
		show_debug_message("DRAWING")
	}
	draw_set_settings(settings)
}
draw_self()
