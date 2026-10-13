
if soulmode == SoulMode.Orange {
	aura_timer++
	var aura_cd = 1
	if aura_timer >= aura_cd {
		array_push(movement_aura,{spr: sprite_index, alpha: 0.8,xpos: x, ypos: y})
		aura_timer = 0
	}
	for (var i = 1; i < array_length(movement_aura); i++) {
		var decrementor = 0.045
		draw_sprite_ext(
			movement_aura[i].spr,
			0,
			movement_aura[i].xpos,
			movement_aura[i].ypos,
			1,
			1,
			0,
			c_white,
			movement_aura[i].alpha
		)
		movement_aura[i].alpha -= decrementor
		if movement_aura[i].alpha <= 0 {
			array_delete(movement_aura,i,1)
			i--
		}
	}
}
draw_self()