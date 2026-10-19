if global.interacted {
	if global.command == BattleTrue_Commands.Fight {
		snd_play(snd_select,1.2)
		global.selected = BattleTrue_Commands.Fight
		instance_destroy(drawer)
		show_debug_message(global.true_battle_enemyname)
		show_debug_message(global.true_battle_enemies)
	}
}
else if global.interacted_x && !during_round {
	if global.selected != noone {
		global.msg = []
		global.msg[0] = "#t001^002* Test blocks the way!/E"
		for (var i = 0; i < array_length(global.msg); i++) {
			global.xx_offset[i] = 64
			global.yy_offset[i] = 420
		}
		drawer = instance_create(0,0,obj_drawer)
		global.selected = noone
	}
}