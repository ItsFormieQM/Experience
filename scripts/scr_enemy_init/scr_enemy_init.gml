function scr_enemy_init(_enemyg = "none"){
	global.enemies = []
	global.enemy_instance_arr = []
	switch _enemyg {
		case "none":
			SCR_TEXT("battle_test_1_1",true)
			global.enemies[0] = obj_test_enemy
			
			break
		default:
			break
	}
}