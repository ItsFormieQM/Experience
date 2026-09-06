function scr_enemy_init(_enemyg = "none"){
	global.enemies = []
	switch _enemyg {
		case "none":
			scr_get_txt("battle_test_1_1",true)
			global.enemies[0] = obj_test_enemy
			
			break
		default:
			break
	}
}