with obj_mainchara {
	sprite_index = spr_kris_fall
}
arrived = false
global.flag[Flag.On_Battle] = true
obj_mainchara.noclip = true
with obj_mainchara {
	tx = obj_kris_centerer.x + 35
	ty = obj_kris_centerer.y + 10
	spdr = 0
	spdr = point_distance(x,y,tx,ty) / 20
	show_debug_message(spdr)
	move_towards_point(tx,ty,spdr)
}
	