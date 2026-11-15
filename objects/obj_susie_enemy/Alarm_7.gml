
scr_showlostanim()
for (var i = 0; i < len(global.normalbattle_enemyinst);i++) {
	if global.normalbattle_enemyinst[i] == id {
		global.normalbattle_enemyinst[i] = none
		break
		
	}
}
global.dialogue_enable_progress = true
global.flag[Flag.Story_SusieState_1] = SusieState_1.Killed
instance_destroy()