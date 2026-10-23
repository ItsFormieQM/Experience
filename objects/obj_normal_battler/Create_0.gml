mus_fade(30,0)
//with obj_mainchara {
//	sprite_index = spr_kris_fall
//}

arrived = false
kris_obj = obj_mainchara
global.flag[Flag.On_Battle] = true
kris_obj.noclip = true
hero_kris = instance_create(kris_obj.x,kris_obj.y,obj_hero_kris)
with hero_kris {
	image_xscale = other.kris_obj.image_xscale
	image_yscale = other.kris_obj.image_yscale
	x = other.kris_obj.x
	y = other.kris_obj.y

}
kris_obj.visible = false
kris_obj = hero_kris
with kris_obj {
	
	tx = 80 + round(sprite_width * 1.8) + camx_ab
	ty = 212 + camy_ab
	spdr = 0
	spdr = point_distance(x,y,tx,ty) / 20
	show_debug_message(tx)
	show_debug_message(spdr)
	move_towards_point(tx,ty,spdr)
}
hero_aura_arrays = [
	
]

stop_aura = true
var idealx = camx_ab
var idealy = camy_ab
instance_create(idealx+x,idealy+y,obj_battle_default_bg)

	