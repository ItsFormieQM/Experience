function cmd_battle_start(_enemy_type = 0,_song = mus_battle_rkb,_pit = 1, _volume = 1){
	_enemy_type = real(_enemy_type)
	if global.true_battle {
		global.battlegroup = _enemy_type
		instance_create(0,0,obj_battleicon)
		
		return "oh this is emotional"
	}
	global.msg = []
	var cam = view_camera[0]
	var camx = camera_get_view_x(cam)
	var camy = camera_get_view_y(cam)
	instance_create(0,0,obj_normal_battler)
}