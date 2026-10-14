function scr_truebattle_setup(type){
	global.true_battle_enemies = []
	global.true_battle_music = noone
	type = real(type)
	switch type {
		case BattleGroup.Little_Timmy:
			global.true_battle_music = mus_truebattle_asgore
			global.true_battle_enemies = obj_test_enemy // PLACEHOLDER CHILL
			show_debug_message("so it rans")
			break
		default:
			break
	}
}