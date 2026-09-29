if visible {
	var oldfnt = draw_get_font()
	draw_set_font(fnt_main_small)
	var scale = 1.5
	var colour = c_white
	var alpha = 1
	var name = "Kris"
	var _x = 0
	var _y = 0
	draw_text_ext_transformed_colour(
		_x + 70,_y + 90,name,1,999,scale,scale,0,colour,colour,colour,colour,alpha
	)
	draw_set_font(oldfnt)
}