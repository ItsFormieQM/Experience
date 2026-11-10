draw_self()

var oldfnt = draw_get_font()
var oldcol = draw_get_colour()
draw_set_font(fnt_hp)
draw_set_colour(c_white)
var scale = 1
for (var i = 1; i <= string_length(string(hp)); i++) {
	switch string_char_at(string(hp),i) {
		case "0":
			spr_indice = 0
			break
		case "1":
			spr_indice = 1
			break
		case "2":
			spr_indice = 2
			break
		case "3":
			spr_indice = 3
			break
		case "4":
			spr_indice = 4
			break
		case "5":
			spr_indice = 5
			break
		case "6":
			spr_indice = 6
			break
		case "7":
			spr_indice = 7
			break
		case "8":
			spr_indice = 8
			break
		case "9":
			spr_indice = 9
			break
		default:
			break
	}
	draw_sprite_ext(
		spr,
		spr_indice,
		x + x_offset,
		y,
		scale,
		scale,
		0,
		c_white,
		1
	)
	x_offset += sprite_get_width(spr) * scale + 1
}
x_offset = 0
draw_set_colour(oldcol)
draw_set_font(oldfnt)