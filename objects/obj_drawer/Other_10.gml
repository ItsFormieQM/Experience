if global.facechoice != noone {
	if instance_exists(global.facechoice) {
		instance_destroy(global.facechoice)
	}
}
for (var i = 1; i <= string_length(test_string); i++) {
	if string_char_at(test_string, i) == "#" {
		if string_char_at(test_string, i+1) == "F" {
			if string_canbe_int(string_char_at(test_string, i+2)) &&
				 string_canbe_int(string_char_at(test_string, i+3)) &&
				  string_canbe_int(string_char_at(test_string, i+4)){
				var face = string_copy(test_string,i+2,3)
				face = real(face)
				scr_facechoice(face)
				test_string = string_delete(test_string,i,5)
				show_debug_message(test_string)
				break
			}
		}
	}
}
var cam = view_camera[0]
camx = camera_get_view_x(cam)
camy = camera_get_view_y(cam)


var expression = 0
for (var i = 1; i <= string_length(test_string); i++) {
	if string_char_at(test_string, i) == "#" {
		if string_char_at(test_string, i+1) == "E" {
			if string_canbe_int(string_char_at(test_string, i+2)) &&
				string_canbe_int(string_char_at(test_string, i+3)) &&
				string_canbe_int(string_char_at(test_string, i+4)){
					expression = string_copy(test_string,i+2,3)
					expression = real(expression)
					with global.facechoice {
						image_index = expression
					}
					
					test_string = string_delete(test_string,i,5)
					show_debug_message(test_string)
					break
			}
		}
	}
}
if global.facechoice != noone {
	global.facechoice = instance_create((camx + x) + global.xx_offset_spriter[count], (camy + y) + global.yy_offset_spriter[count], global.facechoice, {emotion: expression}, true)
}