//cmd_battle_start(5)
var clmp = clamp(instance_number(object_index),1,9999)
repeat clmp {
	array_push(global.normalbattle_enemyinst,battle_object)
}
mus_fade(1,0)
alarm[3] = 120
instance_create(0,0,obj_normal_battler)
sdm(global.normalbattle_enemyinst)
sdm($"LEN: {len(global.normalbattle_enemyinst)}")
for (var i = 0; i < len(global.normalbattle_enemyinst); i++) {
	if object_exists(global.normalbattle_enemyinst[i]) {
		var enemier = instance_create(x,y,global.normalbattle_enemyinst[i])
		enemier.depth = obj_hero_kris.depth
		sdm($"SPAWNED: {enemier.stats.name}, {i+1}")
		global.normalbattle_enemyinst[i] = enemier
	}
}
with all {
	if point_in_rectangle(x,y,camx_ab,camy_ab,camw_ab+camx_ab,camh_ab+camy_ab) && object_index == obj_testnpc_enemy_overworld{
		instance_destroy()
	}
}
