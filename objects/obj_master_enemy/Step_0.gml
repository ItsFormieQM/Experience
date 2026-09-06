timer++
delay = 1
if timer >= delay {
	array_push(position_map,{sprite: sprite_index, sprite_indice: sprite_index, x_pos: x, y_pos: y,alpha: 1})
	timer = 0
}