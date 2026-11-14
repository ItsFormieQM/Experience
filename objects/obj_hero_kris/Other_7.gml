if sprite_index == spr_kris_battle_start {
	image_speed = 0
	image_index = image_number -1
}
if sprite_index == spr_kris_backtoidle {
	sprite_index = spr_kris_lw_battle_idle
	image_speed = ispconstant
	image_index = 0
}
if onetimeanim {
	image_speed = 0
	image_index = image_number - 1
	onetimeanim = false
}	