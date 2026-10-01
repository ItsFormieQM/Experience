if (global.interacted && place_meeting(x,y,obj_mainchara) && !ran) || force_run {
	if global.flag[Flag.On_Battle] {
		exit
	}
	ran = true
	
	if _song != noone {
		instance_create(0,0,obj_battle_start,{song: _song, enemy_type: _enemy_type, volume: _volume, pitch: _pitch})
	}
	else {
		instance_create(0,0,obj_battle_start,{enemy_type: _enemy_type, volume: _volume, pitch: _pitch})
	}
	force_run = false
}
if global.flag[Flag.On_Battle] {
	var _layer = "Lower"
	layer_add_instance(_layer,id)
}
else {
	layer_add_instance(og_layer,id)
}