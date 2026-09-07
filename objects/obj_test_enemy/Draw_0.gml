draw_self()
if !stop_aura {
	for (var i = 1; i < array_length(position_map); i++) {
		var aura_scale_x = image_xscale
		var aura_scale_y = image_yscale
		var aura_decay = 0.02
		draw_sprite_ext(
			position_map[i].sprite,
			position_map[i].sprite_indice,
			position_map[i].x_pos,
			position_map[i].y_pos,
			aura_scale_x,
			aura_scale_y,
			0,
			c_white,
			position_map[i].alpha
		)
		position_map[i].alpha -= aura_decay
	}
}
if highlighted {
	if !instance_exists(obj_enemy_highlighter) {
		instance_create(x,y,obj_enemy_highlighter,{spr: highlighted_spr, xscale: image_xscale, yscale: image_yscale},true)
	}
}
else {
	if instance_exists(obj_enemy_highlighter) {
		instance_destroy(obj_enemy_highlighter)
	}
}