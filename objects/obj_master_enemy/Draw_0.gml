draw_self()
aura_scale = image_xscale
aura_scale_y = image_yscale
aura_decay = 0.2
for (var i = 1; i < array_length(position_map); i++) {
	draw_sprite_ext(
		position_map[i].sprite,
		position_map[i].sprite_indice,
		position_map[i].x_pos,
		position_map[i].y_pos,
		aura_scale,
		aura_scale_y,
		0,
		c_white,
		position_map[i].alpha
	)
	position_map[i].alpha -= aura_decay
}