var bcolor = 3350579
var settings = draw_get_settings()
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
draw_rectangle(xx - 10, 481 + yy, xx + 700, ((480 - bp) + yy) - 2, false);
draw_set_color(bcolor);

draw_rectangle(xx - 10, (480 - bp - 3) + yy, xx + 700, (480 - bp - 2) + yy, false);
draw_set_color(bcolor);

draw_rectangle(xx - 10, (480 - bp) + 34 + yy, xx + 700, (480 - bp) + 36 + yy, false);
if (sel_fight || sel_act || sel_spare) && !partyturn && !partyturn_act_sel{
	
	if global.w_press {
		sel_fight_index--
		if len(global.normalbattle_enemyinst) >= 2 {
			snd_play(snd_menu_move,1.2)
		}
	}
	else if global.s_press {
		sel_fight_index++
		if len(global.normalbattle_enemyinst) >= 2 {
			snd_play(snd_menu_move,1.2)
		}
	}
	if sel_fight_index >= len(global.normalbattle_enemyinst) {
		sel_fight_index = 0
	}
	
	else if sel_fight_index <= -1 {
		sel_fight_index = len(global.normalbattle_enemyinst)- 1
	}
	
	
	draw_set_colour(c_white)
	draw_set_font(fnt_main_battletxt)
	draw_sprite(
		spr_heart_centered,
		0,
		53+camx_ab,
		391+camy_ab + (30*sel_fight_index)
	)
	for (var i = 0; i < len(global.normalbattle_enemyinst);i++) {
		if global.normalbattle_enemyinst[i] == none {
			continue
		}
		with global.normalbattle_enemyinst[i] {
			selected = false
		}
		draw_set_colour(c_white)
		if global.normalbattle_enemyinst[i].stats.spareable {
			draw_set_colour(c_yellow)
		}
		draw_text_ext_transformed(
			75+camx_ab,
			373+camy_ab+(i*30),
			global.normalbattle_enemyinst[i].stats.name,
			20,
			9999,
			0.99,
			0.99,
			0
		)
	}
	if i_exists(global.normalbattle_enemyinst[sel_fight_index]) {
		with global.normalbattle_enemyinst[sel_fight_index] {
			selected = true
		}
	}
	
	
}
else if partyturn_act_sel {
	if global.w_press {
		sel_act_index--
		if len(global.actables[actenemindex].actables) >= 2 {
			snd_play(snd_menu_move,1.2)
		}
	}
	else if global.s_press {
		sel_act_index++
		if len(global.actables[actenemindex].actables) >= 2 {
			snd_play(snd_menu_move,1.2)
		}
	}
	if sel_act_index >= len(global.actables[actenemindex].actables) {
		sel_act_index = 0
	}
	else if sel_act_index <= -1 {
		sel_act_index = len(global.actables[actenemindex].actables)- 1
	}
	draw_sprite(
		spr_heart_centered,
		0,
		53+camx_ab,
		391+camy_ab + (30*sel_act_index)
	)
				
	
	if i_exists(global.actables[actenemindex]._id) {
		draw_set_colour(c_white)
		draw_set_font(fnt_main_battletxt)
			
		for (var j = 0; j < len(global.actables[actenemindex].actables); j++) {
			
			if actenemindex % 4 == 0 {
				draw_set_colour(c_white)
				if global.tp < global.actables[actenemindex].actables[j].tp {
					draw_set_colour(c_gray)
				}
				draw_text_ext_transformed(
					75+camx_ab+((actenemindex+1)/3),
					373+camy_ab+(j*30),
					global.actables[actenemindex].actables[j].name,
					20,
					9999,
					0.99,
					0.99,
					0
				)
			}
			else {
				draw_set_colour(c_white)
				if global.tp < global.actables[actenemindex].actables[j].tp {
					draw_set_colour(c_gray)
				}
				draw_text_ext_transformed(
					75+camx_ab,
					373+camy_ab+(j*30),
					global.actables[actenemindex].actables[j].name,
					20,
					9999,
					0.99,
					0.99,
					0
				)
			}
				
		}
		if global.interacted {
				
			sdm(global.actables[actenemindex].actables[sel_act_index])
			partyturn = true
			partyturn_act_sel = false
			partyturn_act = false
			sel_act = false
		}
	}
}

draw_set_settings(settings)
draw_self()
