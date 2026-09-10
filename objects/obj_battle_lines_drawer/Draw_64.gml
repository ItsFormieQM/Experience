
var colour = c_white
var i = 1
var _len = string_length(visible_txt)

while i <= _len {
	if string_char_at(visible_txt,i) == "`" {
		if i < _len {
			var _next = string_char_at(visible_txt,i + 1)
			if _next == "/" {
				_y += string_height(string_char_at(lines,string_length(lines) - char_index)) * scale 
				_x = x_offset
				i += 2
				continue
			}
			if _next == "|" {
				_y -= string_height(string_char_at(lines,string_length(lines) - char_index)) * scale 
				_x = x_offset
				i += 2
				continue
			}
			if _next == "Y" {
				i += 2
				colour = c_yellow
				continue
			}
			if _next == "B" {
				i += 2
				colour = c_blue
				continue
			}
			if _next == "W" {
				i += 2
				colour = c_white
				continue
			}
			if _next == "R" {
				i += 2
				colour = c_red
				continue
			}
			if _next == "D" {
				i += 2
				colour = c_black
				continue
			}
		} 
		else {
			break
		}
	}

	draw_text_transformed_colour(
		_x,
		_y,
		string_char_at(visible_txt,i),
		scale,
		scale,
		0,
		colour,
		colour,
		colour,
		colour,
		alpha
	)
	_x += string_width(string_char_at(visible_txt,i)) * scale
	i++
}
_y = y_offset
_x = x_offset

draw_text(0,120,$"LENGTH {length}")