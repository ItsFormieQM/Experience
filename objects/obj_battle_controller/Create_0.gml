song = []
if global.chapter == 1 {
	song[0] = new_mus_play(mus_battle_rb,1)
}	
for (var i = 0; i < len(global.normalbattle_heroinst); i++) {
	if i_exists(global.normalbattle_heroinst[i]) {
		global.normalbattle_heroinst[i].setidle_pos()
	}	
}	