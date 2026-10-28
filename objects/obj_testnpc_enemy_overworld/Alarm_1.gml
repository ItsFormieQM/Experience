//cmd_battle_start(5)
array_push(global.normalbattle_enemyinst,battle_object)

mus_fade(1,0)
alarm[3] = 120
instance_create(0,0,obj_normal_battler)
show_debug_message(global.normalbattle_enemyinst)
show_debug_message($"LEN: {len(global.normalbattle_enemyinst)}")
for (var i = 0; i < len(global.normalbattle_enemyinst); i++) {
	if object_exists(global.normalbattle_enemyinst[i]) {
		var enemier = instance_create(x,y,global.normalbattle_enemyinst[i])
		enemier.depth = obj_hero_kris.depth
		show_debug_message($"SPAWNED: {enemier.stats.name}")
		global.normalbattle_enemyinst[i] = enemier
	}
}
i_destroy()
