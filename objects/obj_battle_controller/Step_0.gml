if !partyturn {
	if sel_fight || sel_act || sel_spare {
		if global.interacted {
			
			snd_play(snd_select,1.2)
			if partyturn_act_sel {
				partyturn = true
				partyturn_act_sel = false
				partyturn_act = false
				sel_act = false
				method_call(global.actables[actenemindex].actables[sel_act_index].acted)
			}
			if partyturn_act {
				actenemindex = sel_fight_index
				partyturn_act_sel = true
			}	
			
			if sel_act {
				partyturn_act = true
				partyturn_act_sel = true
			}
			else if sel_fight {
				partyturn = true
				with obj_hero_kris {
					sprite_index = spr_kris_battle_start
					image_index = 0
					image_speed = 0
				}
				instance_create((x+camx_ab) + 150,(y+camy_ab) + 384,obj_atk_box,{},true)
			}
			if partyturn {
				with obj_battle_ui_fight_kris {
					down()
				}
				for (var i =0; i < len(global.normalbattle_enemyinst); i++) {
					with global.normalbattle_enemyinst[i] {
						selected = false
					}
				}
				if i_exists(obj_enemy_highlighter) {
					instance_destroy(obj_enemy_highlighter)
				}
				show_debug_message("so?")
			}
			
		}
	}
}
if global.hp[0] <= 0 {
	cmd_kill()
	global.flag[Flag.On_Battle] = false
	instance_destroy()
}