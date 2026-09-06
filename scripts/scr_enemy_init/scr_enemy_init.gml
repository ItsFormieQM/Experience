function scr_enemy_init(_enemyg = "none"){
	global.enemies = []
	switch _enemyg {
		case "none":
			global.enemies[0] = obj_test_enemy
			show_debug_message("fro it ran fuck u gamemaker")
			break
		default:
			break
	}
}