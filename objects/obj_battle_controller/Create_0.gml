if !variable_instance_exists(self,"mus") {
	mus = mus_battle_fallback
	
}
if !variable_instance_exists(self,"nobackground") {
	nobackground = false
}
obj_mainchara.sprite_index = spr_kris_battle_idle
obj_mainchara.image_speed = 1
mus_play(mus,true,1,1.2)