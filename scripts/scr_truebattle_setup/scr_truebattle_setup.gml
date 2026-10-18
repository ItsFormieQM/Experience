function scr_truebattle_setup(type){
	global.true_battle_enemies = []
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
			global.true_battle_music = mus_play(mus_flowercore,true,1,1.2)
			global.true_battle_enemies[0] = obj_testmonster // PLACEHOLDER CHILL
			show_debug_message("so it rans")
			break
	}
	for (var i = 0; i < array_length(global.true_battle_enemies); i++) {
		var instance = instance_create(320,176,global.true_battle_enemies[i],{},true)
		global.true_battle_enemies[i] = {_id: instance, _obj: instance.object_index}
	}
}