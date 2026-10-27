
delay = 2
time++
if time >= delay {
	var colors = c_red
	array_push(
		aura_array,
		{
			xscale: image_xscale + .3,
			yscale: image_yscale,
			xpos: x,
			ypos: y,
			alpha: 0.2,
			sprite: spr_froggit_npc_sillhoutte,
			frame: image_index,
			colour: colors
		}
	)
	time = 0
}
if !stoprender_aura {
	for (var i = 0; i < len(aura_array);i++) {
		
		draw_sprite_ext(
			aura_array[i].sprite,
			aura_array[i].frame,
			aura_array[i].xpos,
			aura_array[i].ypos,
			aura_array[i].xscale,
			aura_array[i].yscale,
			0,
			c_red,
			aura_array[i].alpha
		)
		var decrementor = 0.01
		aura_array[i].alpha -= decrementor
	
		if aura_array[i].alpha < 0 {
			array_delete(aura_array,i,1)
			//show_debug_message($"I = {i}")
			//show_debug_message($"Length = {len(aura_array)}")
	
		
		}
	}
}
draw_self()