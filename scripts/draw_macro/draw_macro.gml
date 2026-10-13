function draw_set_settings(_struct){
	draw_set_font(_struct._font)
	draw_set_colour(_struct._colour)
	draw_set_halign(_struct._alignment_h)
	draw_set_valign(_struct._alignment_v)
}

function draw_get_settings() {
	var _struct = {
		_colour: draw_get_colour(),
		_font: draw_get_font(),
		_alignment_h: draw_get_halign(),
		_alignment_v: draw_get_valign(),
	
	}
	return _struct
}