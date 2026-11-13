randomise()
sprite_index = spr_mainchara_r//choose(spr_mainchara_r,spr_kris_fall)
random_set_seed(global.flag[Flag.Game_Seed],true)
image_speed = 0
setidle_pos = function() {
	sprite_index = spr_kris_lw_battle_idle
	image_speed = 0.1666666
	image_index = 0
}
actout = false
xslashaura = false
actstate = function() {
	sprite_index = spr_krisb_act
	image_speed = 1
	image_index = 0
	onetimeanim = true
}
backtoidle = function() {
	sprite_index = spr_kris_backtoidle
	image_speed = 1
	image_index = 0
	onetimeanim = true
}
endbattleanim = function(){
	sprite_index = spr_kris_endb
	image_index = 0
	image_speed = 1
	onetimeanim = true
}
realobj = player
gotorealobj = function() {
	if !i_exists(realobj) {
		i_destroy()
	}
	sprite_index = realobj.sprite_index
	spdr = point_distance(x,y,realobj.x,realobj.y) / 24
	move_towards_point(realobj.x,realobj.y,spdr)
	battleend = true
}
battleend = false
onetimeanim = false
aura = []
if i_exists(obj_mainchara_actor) {
	with obj_mainchara_actor {
		visible = false
	}
}
scheddel = false
array_push(global.heroes,id)