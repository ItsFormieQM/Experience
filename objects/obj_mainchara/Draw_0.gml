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
if heart_show {
	heart_timer++
	for (var i = 0; i < array_length(heart_aura_struct); i++) {
		draw_sprite_ext(
			heart_aura_struct[i].spr,
			heart_aura_struct[i].spr_indice,
			x,
			y,
			heart_aura_struct[i].xscale,
			heart_aura_struct[i].yscale,
			0,
			c_white,
			heart_aura_struct[i].alpha
		)
		var scale_incrementor = 0.065
		var alpha_incrementor = 0.065
		heart_aura_struct[i].xscale += scale_incrementor
		heart_aura_struct[i].yscale += scale_incrementor
		if !heart_aura_struct[i].alpha_regress {
			
			heart_aura_struct[i].alpha += alpha_incrementor
		}
		else {
			heart_aura_struct[i].alpha -= alpha_incrementor
		}
		if heart_aura_struct[i].alpha >= 1 {
			heart_aura_struct[i].alpha_regress = true
		}
		
		
	}
}