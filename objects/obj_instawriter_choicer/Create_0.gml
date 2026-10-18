///@desc Stuff
font = fnt_main
colour = c_white
stop_draw = false
_x = 0
_y = 0
myx = -666
myy = -666
char = ""
alpha = 1
depth = obj_dialogue.depth - 150

show_debug_message(test_string)
ran = false
_x = 68
_y = 960 / 2 + 85
if !string_ends_with(test_string,"/E") {
	alpha += "Don't forget to end it with /E :)"
}
test_string = string_replace_all(test_string,"$C","")


choice_pos_map = []
space = true
found = false
larponce = false
index = 0
stopit = false
itdid = false
vertical_pos =[]
horizontal_pos = []