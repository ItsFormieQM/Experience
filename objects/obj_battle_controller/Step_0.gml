if i_exists(obj_drawer) {
	if obj_drawer.stop_draw && global.interacted && obj_drawer.identifier == 1 {
		endbstatemc = true
		intro = 2
		instance_destroy(obj_drawer)
	}	
}	
if !partyturn {
	if sel_fight || sel_act || sel_spare {
		if global.interacted {
			checked = false
			if sel_spare {
				instance_destroy(obj_drawer)
				with global.normalbattle_enemyinst[sel_spare_index] {
					sparemethod.spare(global.normalbattle_enemyinst[other.sel_spare_index])
				}
				sel_spare = false
				partyturn = true
			}
			snd_play(snd_select,1.2)
			if partyturn_act_sel {
				partyturn = true
				partyturn_act_sel = false
				partyturn_act = false
				sel_act = false
				sdm(actenemindex)
				sdm(global.normalbattle_enemyinst)
				instance_destroy(obj_drawer)
				method_call(global.actables[actenemindex].actables[sel_act_index].acted,[global.normalbattle_enemyinst[sel_fight_index]])
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
if !i_exists(obj_drawer) && partyturn {
	if !checked {
		var check = []
		for (var i = 0; i < len(global.normalbattle_enemyinst);i++) {
			if global.normalbattle_enemyinst[i] != none {
				array_push(check,global.normalbattle_enemyinst[i])
			}
		}
		if len(check) <= 0  {
			for (var i = 0; i < len(global.heroes); i++) {
				with global.heroes[i] {
					endbattleanim()
				}
			}
			endb = true
		}
		if endb {
			with obj_nb_tp {
				hspeed = -(13/2)
				friction = -(1/4)
				alarm[5] = 60
			}
			global.msg = []
			global.msg[0] = "#t000^002#fnt001* You won!^/^020^002* Got nothing."
			for (var i = 0; i <len(global.msg);i++) {
				global.xx_offset[i] = 12
				global.yy_offset[i] = 960 / 2 + 150
			}
			var smth = instance_create(0,0,obj_drawer)
			with smth {
				identifier = 1
			}
			checked = true
			global.dialogue_enable_progress = false
		}
	}
}
