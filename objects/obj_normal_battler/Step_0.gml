
with obj_mainchara {
	
	if point_distance(x,y,tx,ty) <= spdr && !other.arrived{
		other.visible = false
		speed = 0
		image_index = 0
		sprite_index = spr_kris_battle_start
		image_index = 2
		image_speed = 0.5
		other.arrived = true
		image_speed = 1.25
		
		snd_play(snd_bstart,1.2)
		snd_play(snd_impact,1.2)
		x = tx
		y = ty
		with other {
			instance_destroy()
		}
	}
	
}