draw_self()
if global.on_battle && variable_instance_exists(self,"movement_frames") && is_array(movement_frames) && array_length(movement_frames) >= 1 {
	aura_decay = 0.035
	aura_scale = 2
	for (var i = 1; i < array_length(movement_frames); i++) {
		
		
		draw_sprite_ext(
			movement_frames[i].sprite,
			movement_frames[i].sprite_indice,
			movement_frames[i].x_pos,
			movement_frames[i].y_pos,
			aura_scale,
			aura_scale,
			0,
			c_white,
			movement_frames[i].alpha
		)
		movement_frames[i].alpha -= aura_decay
	}
}
