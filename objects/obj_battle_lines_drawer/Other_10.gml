for (var i = 1; i <= string_length(lines); i++) {
	if string_char_at(lines,i) == "#" {
		if string_char_at(lines,i+1) == "S" {
			if string_char_at(lines,i+2) == "T" {
				if string_canbe_int(string_char_at(lines,i+3)) &&
					string_canbe_int(string_char_at(lines,i+4)) &&
					string_canbe_int(string_char_at(lines,i+5)) {
						var compare = integer_floor(
										string_char_at(lines,i+3) +
										string_char_at(lines,i+4) +
										string_char_at(lines,i+5)
									)
						lines = string_delete(lines,i,6)
						switch compare {
							case 0:
								snd = snd_txt1
								break
							case 1:
								snd = snd_txt2
								break
							default:
								snd = noone
								break
						
						}
					}
			}
		}
	}
}