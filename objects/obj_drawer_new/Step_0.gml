timer++
snd_delay++
snd_timer++
if timer >= delay {
	char_index++
	timer = 0
	snd_timer = 0
}
if string_char_at(msg,char_index) == "^" {
	if string_canbe_int(string_char_at(msg,char_index + 1)) && 
		string_canbe_int(string_char_at(msg,char_index + 2)) &&
		string_canbe_int(string_char_at(msg,char_index + 3)) {
			delay = real(
						string_char_at(msg,char_index + 1) +
						string_char_at(msg,char_index + 2) +
						string_char_at(msg,char_index + 3)	
					)
			char_index += 4
		}
	else if string_char_at(msg,char_index + 1) == "S" {
		if string_canbe_int(string_char_at(msg,char_index + 2)) && 
			string_canbe_int(string_char_at(msg,char_index + 3)) &&
			string_canbe_int(string_char_at(msg,char_index + 4)) {
				snd_delay = real(
								string_char_at(msg,char_index + 2) +
								string_char_at(msg,char_index + 3) +
								string_char_at(msg,char_index + 4)
							)
				char_index += 5
			}
	}
}

visible_txt += string_char_at(msg,char_index)