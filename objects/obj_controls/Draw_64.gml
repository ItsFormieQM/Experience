

if global.osflavor == Mobile {
	
	draw_rectangle(x1, y1, x1 + 40, y1 + 40, true)	
	x1 /= 2 
	y1 += 40
	draw_rectangle(x1, y1, x1 + 40, y1 + 40, true)
	
	x1 = 80
	y1 = 480 - 180
	x1 += 40
	y1 += 40
	draw_rectangle(x1, y1, x1 + 40, y1 + 40, true)
	
	x1 = 80
	y1 = 480 - 180
	y1 += 80
	draw_rectangle(x1, y1, x1 + 40, y1 + 40, true)
	
	x1 = 80
	y1 = 480 - 180
	x1 += 400
	y1 += 80
	draw_rectangle(x1, y1, x1 + 40, y1 + 40, true)
	
	x1 = 80
	y1 = 480 - 180
	x1 += 440
	y1 += 40
	draw_rectangle(x1, y1, x1 + 40, y1 + 40, true)
	
	x1 = 80
	y1 = 480 - 180
	x1 += 480
	y1 += 80
	draw_rectangle(x1, y1, x1 + 40, y1 + 40, true)
	
	x1 = 80
	y1 = 480 - 180
	y1 += 80
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	var old_fnt = draw_get_font()
	draw_set_font(fnt_main)
	draw_text(
		x1 + 20,
		y1 - 60,
		"W"
	)
	draw_text(
		x1 - 20,
		y1 - 20,
		"A"
	)
	draw_text(
		x1 + 20,
		y1 + 20,
		"S"
	)
	draw_text(
		x1 + 60,
		y1 - 20,
		"D"
	)
	draw_text(
		x1 + 420,
		y1 + 20,
		"Z"
	)
	draw_text(
		x1 + 460,
		y1 - 20,
		"X"
	)
	draw_text(
		x1 + 500,
		y1 + 20,
		"C"
	)
	dra7w_set_font(old_fnt)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}
