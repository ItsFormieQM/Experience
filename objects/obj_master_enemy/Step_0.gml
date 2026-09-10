if !stop_aura {
	timer++
	var delay = 1
	if timer >= delay {
		array_push(position_map,{sprite: sprite_index, sprite_indice: sprite_index, x_pos: x, y_pos: y,alpha: 0.5})
		timer = 0
	}
}
else if !attacked && stop_aura {
	timer = 0
}
if attacked {
	stop_aura = true
	timer_1++
	var delay = 4
	if !ran {
		old_x = x
		old_y = y
		ran = true
		alarm[0] = 60 * 0.8
		timer_1 = delay
	}
	var decay = 2
	if timer_1 >= delay {
		shaker_strength = -1 * shaker_strength
		x += shaker_strength
		shaker_strength -= decay
		timer_1 = 0
		show_debug_message("RAN:")
	}
}
if !attacked {
	if point_distance(x,y,old_x,old_y) <= sp {
		sp = 0
	}
}
if gen_damage_indicator {
	
}