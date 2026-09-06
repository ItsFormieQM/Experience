if keyboard_check_pressed(ord("Q")) {
	game_restart()	
}
else if keyboard_check_pressed(ord("1")) && !global.on_battle {
	var inst = instance_create(-1000,-1000,obj_battle_test,{_song: mus_battle_ttt, _enemy_type: "none", _volume: 1.5})
	inst.force_run = true
}	