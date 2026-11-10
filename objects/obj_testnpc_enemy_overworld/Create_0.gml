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
ps = part_system_create()
pt_fade = part_type_create()
part_type_sprite(pt_fade,sprite_index,true,false,false)
part_type_size(pt_fade,image_xscale/image_yscale,image_xscale/image_yscale,0,0)
part_type_life(pt_fade,23,23)
part_type_alpha3(pt_fade,0.45,0.25,0.1)
part_type_colour1(pt_fade,c_red)
if global.flag[Flag.On_Battle] {
	instance_destroy()
}