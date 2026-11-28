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
	else {
		if othermenu == Pause_Options.ITEM {
			if len(global.player_items) > 0 {
				if global.w_press {
					othermenu_i--
					if othermenu_i < 0{
						othermenu_i = len(global.player_items)-1
					}
					snd_play(snd_menu_move,1.2)
				}
				else if global.s_press {
					othermenu_i++
					if othermenu_i >= len(global.player_items) {
						othermenu_i = 0
					}
					snd_play(snd_menu_move,1.2)
				}
			}
			if global.interacted {
				for (var i = 0; i < len(global.player_items[othermenu_i].description); i++) {
					global.msg[i] = global.player_items[othermenu_i].description[i]
				}
				
				script_execute_ext(asset_get_index(global.player_items[othermenu_i].exec),global.player_items[othermenu_i].args)
				scr_normaltextoffset()
				first_menu = true
				othermenu = Pause_Options.NOONE
				othermenu_i = 0
				astate = false
				instance_create(0,0,obj_drawer)
				array_delete(global.player_items,othermenu_i,1)
			}
		}
	}
}

