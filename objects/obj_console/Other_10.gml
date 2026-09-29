var input = keyboard_string
var scr = ""
var args = []
var i = 1
for (i = 1; i <= string_length(input); i++) {
	if string_char_at(input,i) == " " {
		
		break
	}
	else {
		scr += string_char_at(input,i)
	}
}
var arg = ""
for (var j = i; j <= string_length(input) + 1; j++) {
	if string_char_at(input,j) == " " {
		array_push(args,arg)
		arg = ""
	}
	else {
		arg += string_char_at(input,j)
	}	
	if j == string_length(input) {
		array_push(args,arg)
		array_delete(args,0,1)
		break
	}
}
scr = "cmd_" + scr
show_debug_message($"SCRIPT NAME: {scr} ARGUMENT ARRAY: {args}")
scr = asset_get_index(scr)
if script_exists(scr) {
	script_execute_ext(scr,args)
	event_user(1)
}
if keyboard_string != "clear" {
	array_push(history_commands,keyboard_string)
}
io_clear()



