scale = 1.5
_x = 0
_y = 0
colour = c_white


var old_col = draw_get_colour()
var old_fnt = draw_get_font()
var old_h = draw_get_halign()
var old_v = draw_get_valign()
draw_set_font(fnt_main)

//for (var i = 0; i < array_length(save_files_list()); i++) {
//	var j = i + 1

	
	
	
//}

i = -1
j = 0
i++
if save_files[i].location != -4 {
	var name = "Kris"
	_x_offset = 340
	_y_offset = 90
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)	
	var rm_name = values[i][3]
	_x_offset = 340
	_y_offset = 90 + 40
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,rm_name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
else {
	var name = "EMPTY"
	_x_offset = 340
	_y_offset = 90 * (i + 1) + (70 * i)
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
i++
if save_files[i].location != -4 {
	var name = "Kris"
	_x_offset = 340
	_y_offset = 90 * (i + 1) + 70
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)	
	var rm_name = values[i][3]
	_x_offset = 340
	_y_offset = 90 - 50 + _y_offset
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,rm_name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
else {
	var name = "EMPTY"
	_x_offset = 340
	_y_offset = 90 * (i + 1) + (70 * i)
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
i++
if save_files[i].location != -4 {
	var name = "Kris"
	_x_offset = 340
	_y_offset = 90 * (i + 1) + (70 * i)
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)	
	var rm_name = values[i][3]
	_x_offset = 340
	_y_offset = 90 - 50 + _y_offset
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,rm_name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
else {
	var name = "EMPTY"
	_x_offset = 340
	_y_offset = 90 * (i + 1) + (70 * i)
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
i++
if save_files[i].location != -4 {
	var name = "Kris"
	_x_offset = 340
	_y_offset = 90 * (i + 1) + (70 * i)
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)	
	var rm_name = values[i][3]
	_x_offset = 340
	_y_offset = 90 - 50 + _y_offset
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,rm_name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
else {
	var name = "EMPTY"
	_x_offset = 340
	_y_offset = 90 * (i + 1) + (70 * i)
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
i++
if save_files[i].location != -4 {
	var name = "Kris"
	_x_offset = 340
	_y_offset = 90 * (i + 1) + (70 * i)
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)	
	var rm_name = values[i][3]
	_x_offset = 340
	_y_offset = 90 - 50 + _y_offset
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,rm_name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
else {
	var name = "EMPTY"
	_x_offset = 340
	_y_offset = 90 * (i + 1) + (70 * i)
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
draw_set_halign(fa_center)
for (var j = 0; j < array_length(choices); j++) {
	_x_offset = 470 + (j * 210)
	_y_offset = (90 * (index + 1) + (70 * index + 1)) + 90
	draw_text_ext_transformed_colour(
		_x + _x_offset,_y + _y_offset,choices[j],1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}

scale = 1.8
_y_offset = (90 * (index + 1) + (70 * index + 1)) + 105
draw_set_halign(fa_left)

var _text_center_x = 470 + (choicer * 210)
var _half_text_width = (string_width(choices[choicer]) * scale) / 2
_x_offset = _text_center_x - _half_text_width - 15

draw_sprite_ext(
	spr_small_heart,
	0,
	_x + _x_offset,
	_y + _y_offset,
	scale,
	scale,
	0,
	c_white,
	alpha
)

draw_set_colour(old_col)
draw_set_font(old_fnt)
draw_set_halign(old_h)
draw_set_valign(old_v)