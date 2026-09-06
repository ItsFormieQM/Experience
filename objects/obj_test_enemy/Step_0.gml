timer++
var delay = 1
aura_alpha = 0.5
if timer >= delay {
	array_push(position_map,{sprite: sprite_index, sprite_indice: image_index, x_pos: x, y_pos: y, alpha: aura_alpha})
	timer = 0
}