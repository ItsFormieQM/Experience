draw_self()

for (var i = 1; i <= string_length(test_string); i++) {
	char_1 = string_char_at(test_string,i)
	char_2 = string_char_at(test_string,i+1)
	char_3 = string_char_at(test_string,i+2)
	char_4 = string_char_at(test_string,i+3)
	char_5 = string_char_at(test_string,i+4)
	char_6 = string_char_at(test_string,i+5)
	char_7 = string_char_at(test_string,i+6)
	char_8 = string_char_at(test_string,i+7)
	char_9 = string_char_at(test_string,i+8)
	char_10 = string_char_at(test_string,i+9)
	char_11 = string_char_at(test_string,i+10)
	char_12 = string_char_at(test_string,i+11)
	if char_1 == "#" {
		if char_2 == "f" {
			if string_canbe_int(char_3) && 
				string_canbe_int(char_4) &&
				string_canbe_int(char_5) {
					var cmp = real(
								char_3 + char_4 + char_5
							)
					switch cmp {
						case 0:
							
					}
					i += 4
					continue					
				}
		}
	}
}