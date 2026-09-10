colour = c_white
up = true
down = false
number_array = []
x_offset = 0
var stop_time = 6
x += 40
y += 30
alarm[0] = stop_time + 3
alarm[1] = stop_time + 10
if !variable_instance_exists(self, "number") && !string_canbe_int(number) {
	number = "67" // check
}
for (var i = 1; i <= string_length(number); i++) {
	array_push(number_array, integer_floor(string_char_at(number,i)))
}
if !variable_instance_exists(self,"spr") {
	spr = spr_numbers_yellow
}
fadeout = false
alpha = image_alpha
spr_indice = 0
image_xscale = 0.8
image_yscale = 0.01
alarm[2] = 50
var sp = 7
path = pth_number_indicator
path_start(path,sp,path_action_stop,false)