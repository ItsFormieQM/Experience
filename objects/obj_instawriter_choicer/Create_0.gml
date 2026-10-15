///@desc Stuff
font = fnt_main
colour = c_white
stop_draw = false
_x = 0
_y = 0
char = ""
alpha = 1

show_debug_message(test_string)
ran = false
_x = 68
_y = 960 / 2 + 85
if !string_ends_with(test_string,"/E") {
	alpha += "Don't forget to end it with /E :)"
}
test_string = string_replace_all(test_string,"$C","")
test_string = string_replace_all(test_string,"/E"," ")

choice_pos_map = []
space = true
found = false
larponce = false
index = 0
