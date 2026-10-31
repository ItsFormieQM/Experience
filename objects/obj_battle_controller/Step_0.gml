if !partyturn {
	if sel_fight || sel_act || sel_spare {
		if global.interacted {
			partyturn = true
			snd_play(snd_select,1.2)
			if sel_fight {
				with obj_hero_kris {
					sprite_index = spr_kris_battle_start
					image_index = 0
					image_speed = 0
				}
				instance_create((x+camx_ab) + 150,(y+camy_ab) + 384,obj_atk_box,{},true)
				with obj_battle_ui_fight_kris {
					down()
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