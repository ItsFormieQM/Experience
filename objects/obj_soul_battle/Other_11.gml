if soulmode == SoulMode.Orange {
	sprite_index = spr_soul_battle_orange
	if !variable_instance_exists(self,"moving_up") {
		moving_left = false
		moving_right = false
		moving_up = false
		moving_down = false
	
	}
	movement_aura = [{}]
	aura_timer = 0
	sp = 3.5
}
else if soulmode == SoulMode.Red {
	sprite_index = spr_soul_battle
	sp = 2.5
}