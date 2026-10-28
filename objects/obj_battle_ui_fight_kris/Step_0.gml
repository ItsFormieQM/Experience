if i_exists(obj_battle_controller) {
	with obj_battle_controller {
		other.x = xx + 320
		other.y = (camh_ab - bp) + yy
	}
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
	image_index = index_main+1
}