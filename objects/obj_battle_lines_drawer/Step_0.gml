timer++
snd_timer++
if global.held_x {
	if !stop_draw {
		snd_timer += 8
		timer += 8
	}
}
if buffer {
	buffer = false
	timer = delay
}

if char_index >= string_length(lines) {
	stop_draw = true		
}

if timer >= delay && !stop_draw{
	char_index++
	if string_char_at(lines,char_index) == "^" {
		
		if string_char_at(lines,char_index + 1) == "L" {
			if string_canbe_int(string_char_at(lines,char_index + 2)) && 
				string_canbe_int(string_char_at(lines,char_index + 3)) &&
				string_canbe_int(string_char_at(lines,char_index + 4)) {
					length = real(
								string_char_at(lines,char_index+2) +
								string_char_at(lines,char_index+3) +
								string_char_at(lines,char_index+4)
							)
					char_index += 5
				}
		}
		if string_canbe_int(string_char_at(lines,char_index + 1)) && 
			string_canbe_int(string_char_at(lines,char_index + 2)) &&
			string_canbe_int(string_char_at(lines,char_index + 3)) {
			delay = real(
						string_char_at(lines,char_index+1) +
						string_char_at(lines,char_index+2) +
						string_char_at(lines,char_index+3) 
					)
			char_index += 4
			
		}
		if string_char_at(lines,char_index + 1) == "S" {
			if string_canbe_int(string_char_at(lines,char_index + 2)) && 
				string_canbe_int(string_char_at(lines,char_index + 3)) &&
				string_canbe_int(string_char_at(lines,char_index + 4)) {
				snd_delay = real(
							string_char_at(lines,char_index+2) +
							string_char_at(lines,char_index+3) +
							string_char_at(lines,char_index+4) 
						)
				snd_timer = 0
				char_index += 5
			
			}
		}
	}
	visible_txt += string_char_at(lines,char_index)
	timer = 0
	
}
if snd_timer >= snd_delay && !stop_draw {
	snd_play(snd,1.2)
	snd_timer = 0
}