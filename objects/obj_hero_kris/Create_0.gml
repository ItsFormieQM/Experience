randomise()
sprite_index = spr_mainchara_r//choose(spr_mainchara_r,spr_kris_fall)
random_set_seed(global.flag[Flag.Game_Seed],true)
image_speed = 0
setidle_pos = function() {
	sprite_index = spr_kris_lw_battle_idle
	image_speed = ispconstant
	image_index = 0
}
invintimer = 0
actout = false
xslashaura = false
actstate = function() {
	sprite_index = spr_krisb_act
	image_speed = 1
	image_index = 0
	onetimeanim = true
}
damage = function(amt) {
	if invintimer > 0 {
		exit
	}
	with obj_camera {
		shake_xcoord(15,12,3)
		shake_ycoord(15,12,3)
	}
	snd_play(snd_damage,1.1)
	
	global.hp[0] -= clamp(amt,0,global.maxhp[0])
	if global.hp[0] <= 0 {
		cmd_kill()
		exit
	}
	var yoff = 0
	sprite_index = spr_krisb_hurt
	image_index = 0
	invintimer = 60*4
	if !i_exists(obj_soul_battle) {
		invintimer = 0
	}
	else {
		with obj_soul_battle {
			image_index = 1
			invintimer = other.invintimer
		}
	}
	dmger = noone
	if i_exists(dmger) {
		yoff = sprite_get_height(spr_numbers_yellow)*dmgercount
	}
	else {
		dmgercount = 0
		yoff = 0
	}
	image_speed = 1
	dmger = instance_create(x,y,obj_damage_writer,{damage: floor(amt)},true)
	dmgercount++
}
backtoidle = function() {
	if sprite_index == spr_kris_lw_battle_idle {
		return
	}
	sprite_index = spr_kris_backtoidle
	image_speed = 1
	image_index = 0
	
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