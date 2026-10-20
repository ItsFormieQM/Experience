if global.interacted && !mainchara_doing {
	if global.selected == BattleTrue_Commands.Fight {
		fighter = instance_create(320,320,obj_truebattle_attacker,{},true)
		mainchara_doing = true
		instance_destroy(instadrawer)
	}
	if global.command == BattleTrue_Commands.Fight {
		snd_play(snd_select,1.2)
		global.selected = BattleTrue_Commands.Fight
		
		instadrawer = instance_create(64 + 32,280 - 6,obj_instawriter,{},true)
		with obj_heart {
			x = other.instadrawer.x - 32
			y = other.instadrawer.y + 6
		}
		instance_destroy(drawer)
		show_debug_message(global.true_battle_enemyname)
		show_debug_message(global.true_battle_enemies)
		
	}
	
}
else if global.interacted_x && !during_round && !mainchara_doing {
	if global.selected != noone {
		global.msg = []
		global.msg[0] = "#t001^002* Test blocks the way!/E"
		for (var i = 0; i < array_length(global.msg); i++) {
			global.xx_offset[i] = 64
			global.yy_offset[i] = 420
		}
		instance_destroy(instadrawer)
		drawer = instance_create(0,0,obj_drawer)
		with obj_heart {
			x = xstart
			y = ystart
		}
		global.selected = noone
	}
}