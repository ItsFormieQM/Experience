if !variable_instance_exists(self,"mus") {
	mus = mus_battle_rb
}
if !variable_instance_exists(self,"vol") {
	vol = 1
}
if !variable_instance_exists(self,"nobackground") {
	nobackground = false
}
obj_mainchara.image_index = 0
obj_mainchara.sprite_index = spr_kris_lw_battle_idle
obj_mainchara.image_speed = 1
mus_play(mus,true,1,vol)
alarm[0] = 60 * 30
sp = 15
target_y = obj_battle_ui_txtbox.y - (32 * 4.5)
ismoving = true