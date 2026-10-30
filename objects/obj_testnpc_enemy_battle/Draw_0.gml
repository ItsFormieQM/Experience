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
if selected {
	if !i_exists(obj_enemy_highlighter) {
		var highlighter = instance_create(x,y,obj_enemy_highlighter,{spr: sprite_index},true) 
		with highlighter {
			
			owner = other.id
		}
	}
}
else {
	if i_exists(obj_enemy_highlighter) {
		if obj_enemy_highlighter.owner == id {
			instance_destroy(obj_enemy_highlighter)
		}
	}
}
draw_self()