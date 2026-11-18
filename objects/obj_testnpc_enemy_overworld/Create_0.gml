seen = false
touched = false
chase = false
aura_array = []
time = 0
stoprender_aura = false
toofar = false
giveup = false
giveup_calc = false
tired = false
battle_object = obj_testnpc_enemy_battle
toofar = false
drag = false
touched = false
lazerer = noone
if global.flag[Flag.On_Battle] {
	instance_destroy()
}
if room == room_drw_forestnight {
	lazerer = instance_create(910,752,obj_lazerwall)
	with lazerer {
		image_yscale = 1.3
	}
}
if is_dreamworld() {	
	sprite_index = spr_froggit_npc_drw
}