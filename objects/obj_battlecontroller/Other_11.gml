
if !partyturn {
	return
}
if endb {
	return
}
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
if true{

	rounds++
	alarm[2] = 1
	var i = -1
	repeat len(global.heroes) {
		i++
		if global.heroes[i].sprite_index == spr_krisb_act {
			with global.heroes[i] {
				backtoidle()
			}
		}
	}
	i = -1
	repeat len(global.normalbattle_enemyinst) {
		i++
		if is_string(global.normalbattle_enemyinst[i]) || !i_exists(global.normalbattle_enemyinst[i]) {
			continue
		}
		with global.normalbattle_enemyinst[i] {
			alarm[3] = 1
		}
	}
}