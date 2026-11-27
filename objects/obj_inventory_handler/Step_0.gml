if global.cutscene {
	exit
}

if global.interacted_x {
	if astate && first_menu {
		global.interacted_c = true
	}
	if !first_menu {
		first_menu = true
		othermenu = Pause_Options.NOONE
	}
}
if global.interacted_c {
	if !astate && !global.canmove {
		exit
	}
	astate = !astate
	if !astate {
		global.canmove = true
		
	}
	if astate {
		snd_play(snd_menu_move,1.2)
		first_menu = true
	}
}
if astate {
	
	with obj_mainchara {
		global.canmove = false
	}
	if first_menu {
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
			othermenu = first_menu_i
			switch othermenu {
				case Pause_Options.ITEM:
					if len(global.player_items) > 0 {
						break
					}
					exit
				default:
					break
			}
			first_menu = false
			snd_play(snd_select,1.2)
		}
	}
	
}

