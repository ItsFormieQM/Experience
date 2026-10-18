function scr_truebattle_setup(type){
	global.true_battle_enemies = []
	global.true_battle_music = noone
	type = real(type)
	switch type {
		case BattleGroup.Little_Timmy:
			mus_pause(global.current_mus)
			global.true_battle_music = mus_play(mus_fallen_down_reprise)
			global.true_battle_enemies = obj_test_enemy // PLACEHOLDER CHILL
			show_debug_message("so it rans")
			break
		default:
			mus_pause(global.current_mus)
			global.true_battle_music = mus_play(mus_flowercore,true,1,1.2)
			global.true_battle_enemies = obj_test_enemy // PLACEHOLDER CHILL
			show_debug_message("so it rans")
			break
	}
}