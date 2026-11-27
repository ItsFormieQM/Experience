if global.cutscene {
	exit
}
if global.interacted_c {
	astate = !astate
	if !astate {
		global.canmove = true
		
	}
	if astate {
		snd_play(snd_menu_move,1.2)
		first_menu = true
	}
}
if global.interacted_x {
	if astate && first_menu {
		global.interacted_c = true
	}
}
if astate {
	
	with obj_mainchara {
		global.canmove = false
	}
	if global.w_press {
		first_menu_i--
		if first_menu_i < 0{
			first_menu_i = first_menu_len-1
		}
		snd_play(snd_menu_move,1.2)
	}
	else if global.s_press {
		first_menu_i++
		if first_menu_i >= first_menu_len {
			first_menu_i = 0
		}
		snd_play(snd_menu_move,1.2)
	}
	else if global.interacted {
		switch first_menu_i {
			case Pause_Options.ITEM:
				break
			case Pause_Options.STAT:
				break
			case Pause_Options.CELL:
				break
			case Pause_Options.SETT:
				sdm(scr_get_settings())
				break
			default:
				c_error("shit",false)
				break
		}
	}
	
}

