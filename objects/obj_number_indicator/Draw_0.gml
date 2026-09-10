draw_self()
x_offset = 0
draw_path(path,x,y,true)
for (var i = 0; i < array_length(number_array); i++) {
	switch number_array[i] {
		case 0:
			spr_indice = 0
			break
		case 1:
			spr_indice = 1
			break
		case 2:
			spr_indice = 2
			break
		case 3:
			spr_indice = 3
			break
		case 4:
			spr_indice = 4
			break
		case 5:
			spr_indice = 5
			break
		case 6:
			spr_indice = 6
			break
		case 7:
			spr_indice = 7
			break
		case 8:
			spr_indice = 8
			break
		case 9:
			spr_indice = 9	
			break
		default: // 0
			spr_indice = 0
			break
	}
	draw_sprite_ext(
		spr,
		spr_indice,
		x + x_offset,
		y,
		image_xscale,
		image_yscale,
		0,
		c_white,
		alpha
	)
	x_offset += sprite_get_width(spr) * image_xscale
}
//draw_healthbar()