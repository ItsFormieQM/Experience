
with obj_mainchara {
	if !other.stop_aura {
		array_push(other.hero_aura_arrays,{xpos: x, ypos: y, sprite: sprite_index, frame: image_index, alpha: 0.65, xscale: image_xscale, yscale: image_yscale})
	}
}
for (var i = 0; i < array_length(hero_aura_arrays); i++) {
	draw_sprite_ext(
		hero_aura_arrays[i].sprite,
		hero_aura_arrays[i].frame,
		hero_aura_arrays[i].xpos,
		hero_aura_arrays[i].ypos,
		hero_aura_arrays[i].xscale,
		hero_aura_arrays[i].yscale,
		0,
		c_white,
		hero_aura_arrays[i].alpha
	)
	var decrementor = 0.02
	hero_aura_arrays[i].alpha -= decrementor
	if hero_aura_arrays[i].alpha <= 0 {
		array_delete(hero_aura_arrays,i,1)
		i--
	}
}