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

draw_set_colour(old_col)
draw_set_font(old_fnt)
draw_set_halign(old_h)
draw_set_valign(old_v)