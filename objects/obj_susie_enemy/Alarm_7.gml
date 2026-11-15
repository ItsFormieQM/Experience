
scr_showlostanim()
for (var i = 0; i < len(global.normalbattle_enemyinst);i++) {
	if global.normalbattle_enemyinst[i] == id {
		global.normalbattle_enemyinst[i] = none
		break
		
	}
}
instance_destroy()