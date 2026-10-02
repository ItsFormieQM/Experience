if (global.interacted && place_meeting(x,y,obj_mainchara) && !ran) || force_run {
	if global.flag[Flag.On_Battle] {
		exit
	}
	ran = true
	
	if _song != noone {
		instance_create(0,0,obj_battle_start,{custom_bg: custom_background,song: _song, enemy_type: _enemy_type, volume: _volume, pitch: _pitch})
	}
	else {
		instance_create(0,0,obj_battle_start,{custom_bg: custom_background,enemy_type: _enemy_type, volume: _volume, pitch: _pitch})
	}
	force_run = false
}
if global.flag[Flag.On_Battle] {
	var _layer = "Lower"
	depth = layer_get_depth(_layer)
}
else {
	depth = layer_get_depth(og_layer)
}