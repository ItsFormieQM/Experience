if battleintro {
	array_push(aura,{xpos: x, ypos: y, sprite: sprite_index, frame: image_index, alpha: 0.45, xscale: image_xscale, yscale: image_yscale})
}
if len(aura) > 0 {
	for (var i = 0; i < len(aura); i++) {
		draw_sprite_ext(
			aura[i].sprite,
			aura[i].frame,
			aura[i].xpos,
			aura[i].ypos,
			aura[i].xscale,
			aura[i].yscale,
			0,
			c_white,
			aura[i].alpha
		)
		var decrementor = 0.02
		aura[i].alpha -= decrementor
		if aura[i].alpha <= 0{
			array_delete(aura,i,1)
			i--
		}
	}
}
draw_self()