if instance_exists(obj_plot_controller) {
	if !variable_instance_exists(obj_plot_controller,"plot") {
		scr_get_txt("gaster_start")
	}
}
is_choicer = false
buffer = true
global.canmove = false
chest_award = false
distance = 0
fade_rate = 0.02
fade = false
alpha = 1
colour = c_white
special_text = false
test_str = ""
skippable = false
current_string = ""
visible_text = ""
timer = 0
index = 0
delay = 5
stop_draw = false
colour = c_white
position_map = []
snd_timer = 0
snd_delay = 5
chars = []
count = 0
spriter = noone
spriter_indice = 0
_x_offset = global.xx_offset[count]
_x = _x_offset
_y = global.yy_offset[count]
_spr_scalex = 0
_spr_scaley = 0                                                                                                                                
if spriter != noone {
	_spr_x = global.xx_offset_spriter[count]
	_spr_y = global.yy_offset_spriter[count]
}
plot = 0
test_string = global.msg[count]
font = fnt_main
for (var i = 1; i < string_length(test_string); i++) {
	array_push(chars, string_char_at(test_string,i))
}
stop_snd = false
audio_falloff_set_model(audio_falloff_none)
gaster = false
if string_char_at(test_string,1) == "^" && string_char_at(test_string,2) == "+" {
	snd = noone
	
}
else {
	snd = snd_txt1	
}	