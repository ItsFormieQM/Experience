var oldfnt = draw_get_font()
draw_set_font(fnt_main_small)
var scale = 1.8
var alpha = 1
var name = "Kris"
var _x = 0
var _y = 0
draw_text_ext_transformed_colour(
	_x + 320,_y + 280,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
)
draw_text_ext_transformed_colour(
	_x + 320,_y + 350,current_room,1,999,scale,scale,0,colour,colour,colour,colour,alpha
)
draw_text_ext_transformed_colour(
	_x + 320 * 2 - 60,_y + 280,"LV " + string(values[5]),1,999,scale,scale,0,colour,colour,colour,colour,alpha
)
draw_text_ext_transformed_colour(
	_x + 320 * 3 - 120,_y + 280,$"{minutes}:{seconds}",1,999,scale,scale,0,colour,colour,colour,colour,alpha
)
if !file_saved {
	for (var j = 0; j < array_length(choices); j++) {
		draw_text_ext_transformed_colour(
			_x + 375,_y + 485,choices[j],1,999,scale,scale,0,colour,colour,colour,colour,alpha
		)
		_x = 345
	}
}
scale = 2
if !file_saved {
	if i == 0 {
		_x = 0 + 335
		_y = 0 + 502
	
		draw_sprite_ext(
			spr_small_heart,
			0,
			_x,
			_y,
			scale,
			scale,
			0,
			c_white,
			1
		)
	}
	else if i == 1 {
		_x = 345 + 335
		_y = 0 + 502
		draw_sprite_ext(
			spr_small_heart,
			0,
			_x,
			_y,
			scale,
			scale,
			0,
			c_white,
			1
		)
	}
}
else {
	_x = 0 + 375
	_y = 0 + 485
	scale = 1.8
	var txt = "File saved."
	draw_text_ext_transformed_colour(
		_x,_y,txt,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
}
draw_set_font(oldfnt)