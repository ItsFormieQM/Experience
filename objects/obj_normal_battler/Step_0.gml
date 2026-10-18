
with obj_mainchara {
	
	if point_distance(x,y,tx,ty) <= spdr && !other.arrived{
		speed = 0
		image_index = 0
		sprite_index = spr_kris_battle_start
		other.arrived = true
		image_speed = 1.25
		snd_play(snd_bstart)
		x = tx
		y = ty
		with other {
			instance_destroy()
		}
	}
	
}