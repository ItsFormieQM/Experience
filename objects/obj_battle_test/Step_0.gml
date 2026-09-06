if global.interacted && place_meeting(x,y,obj_mainchara) && !ran {
	ran = true
	
	if _song != noone {
		instance_create(0,0,obj_battle_start,{song: _song, enemy_type: _enemy_type})
	}
	else {
		instance_create(0,0,obj_battle_start,{enemy_type: _enemy_type})
	}
	
}