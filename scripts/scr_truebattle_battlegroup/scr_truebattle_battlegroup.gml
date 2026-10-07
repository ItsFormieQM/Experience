function scr_truebattle_battlegroup(type){
	global.true_battle_enemies = []
	global.true_battle_music = noone
	enum BattleGroup {
		Froggit,
		Asgore,
	}
	switch type {
		case BattleGroup.Asgore:
			global.true_battle_music = mus_play(mus_truebattle_asgore)
			global.true_battle_enemies = obj_test_enemy // PLACEHOLDER CHILL
			break
		default:
			break
	}
}