function cmd_battle_start(_song = noone,_enemy_type = "none", _volume = 1, _pit = 1){
	global.msg = []
	if !instance_exists(obj_mainchara) {
		return -1
	}
	if !layer_exists("Lower") {
		layer_create(layer_get_depth("Instances") - 1, "Lower")
	}
	if !instance_exists(obj_kris_centerer) {
		instance_create(54,192,obj_kris_centerer)
	}
	if !instance_exists(obj_enemy_centerer) {
		instance_create(560,192,obj_enemy_centerer)
	}
	if !instance_exists(obj_battle_ui_fight_kris) {
		instance_create(320,550,obj_battle_ui_fight_kris)
	}
	if !instance_exists(obj_battle_ui_txtbox) {
		instance_create(0,584,obj_battle_ui_txtbox)
	}
	if !global.on_battle {
		if !string_canbe_int(_volume) || !string_canbe_int(_pit) {
			return -1
		}
		_song = asset_get_index(_song)
		if _song == -1 {
			_song = noone
		}
		_volume = real(_volume)
		_pit = real(_pit)
		var inst = instance_create(-1000,-1000,obj_battle_test,{_song: _song, _enemy_type: _enemy_type, _volume: _volume})
		inst.force_run = true
		
	}
	return 0
}