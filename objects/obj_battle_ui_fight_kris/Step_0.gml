if i_exists(obj_battle_controller) {
	with obj_battle_controller {
		other.x = xx + 320
		other.y = (camh_ab - bp) + yy
	}
	if !sel_smth {
		if global.d_press {
			index_main++
			if index_main > max_indexmain_bt {
				index_main = 0
			}
			snd_play(snd_menu_move)
		}
		else if global.a_press {
			index_main--
			if index_main <= -1 {
				index_main = max_indexmain_bt
			}
			snd_play(snd_menu_move)
		}
		else if global.interacted {
			snd_play(snd_select,1.2)
			with obj_drawer {
				OVERRIDE_Y = 666
				snd = snd_none
			}
			sel_smth = true
			with obj_battle_controller {
				if other.index_main == 0 {
					sel_fight = true
					sel_fight_index = 0
				}
				else if other.index_main == 1 {
					sel_act = true
					sel_act = 0
				}
				else if other.index_main == 2 {
					sel_item = true
					sel_item_index = 0
				}
				else if other.index_main == 3 {
					sel_spare = true
					sel_spare_index = 0
				}
				else if other.index_main == 4 {
					sel_defend = true
					sel_defend_index = 0
				}
				else {
					show_error("shit smth broke at battle controller at line 46",true)
				}
			}
		}
	}
	if global.interacted_x {
		with obj_drawer {
			OVERRIDE_Y = 0
			snd = snd_txt1
		}
		with obj_battle_controller {
			sel_fight = false
			sel_fight_index = 0
			sel_act = false
			sel_act_index = 0
			sel_item = false
			sel_item_index = 0
			sel_spare = false
			sel_spare_index = 0
			sel_defend = false
			sel_defend_index = 0
		}
		sel_smth = false
		
	}
	image_index = index_main+1
}