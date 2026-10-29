randomise()
sprite_index = spr_mainchara_r//choose(spr_mainchara_r,spr_kris_fall)
random_set_seed(global.flag[Flag.Game_Seed],true)
image_speed = 0
setidle_pos = function() {
	sprite_index = spr_kris_lw_battle_idle
	image_speed = 1
	image_index = 0
}
aura = []