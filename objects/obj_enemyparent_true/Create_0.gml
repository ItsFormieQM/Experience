hp = 900
name = "Testificate"
maxhp = hp
array_push(global.true_battle_enemyhp, {_id: id, _hp: hp, _maxhp: maxhp})
for (var i = 0; i < array_length(global.true_battle_enemyname); i++) {
	if global.true_battle_enemyname[i] == noone {
		global.true_battle_enemyname[i] = name
		break
	}
}