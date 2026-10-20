
with obj_mainchara
	array_push(other.hero_aura_arrays,{xpos: x, ypos: y, sprite: sprite_index, alpha: 0.5, xscale: image_xscale, yscale: image_yscale})
	
for (var i = 0; i < array_length(hero_aura_arrays); i++) {
	draw_sprite(hero_aura_arrays)
}