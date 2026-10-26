function scr_truebattle_setup(type){
	global.true_battle_enemies = []
	global.true_battle_enemyhp = []
	global.true_battle_enemyname = []
	for (var i = 0; i < 3; i++) {
		global.true_battle_enemies[i] = noone
		global.true_battle_enemyname[i] = noone
	}
	enum BattleTrue_Commands {
		Fight,
		Act,
		Item,
		Spare
	}
	global.command = BattleTrue_Commands.Fight
	global.true_battle_music = noone
	type = real(type)
	switch type {
		case BattleGroup.Little_Timmy:
			mus_pause(global.current_mus)
			global.true_battle_music = mus_play(mus_fallen_down_reprise)
			global.true_battle_enemies[0] = obj_test_enemy // PLACEHOLDER CHILL
			show_debug_message("so it rans")
			break
		default:
			mus_pause(global.current_mus)
			global.true_battle_music = mus_play(mus_battle_rkb,true,1,1.2)
			global.true_battle_enemies[0] = instance_create(216,136,obj_truebattle_enemy_froggit) // PLACEHOLDER CHILL
			show_debug_message("so it rans")
			break
	}
	
}