
with kris_obj {
	
	if point_distance(x,y,tx,ty) <= spdr && !other.arrived{
		other.stop_aura = true
		speed = 0
		image_index = 0
		sprite_index = spr_kris_battle_start
		image_index = 2
		image_speed = 0.5
		other.arrived = true
		image_speed = 1.25
		if len(other.hero_aura_arrays) > 0 {
			array_delete(other.hero_aura_arrays,array_length(other.hero_aura_arrays) - 1, 1)
		}
		
		snd_play(snd_bstart,1.2)
		snd_play(snd_impact,1.2)
		x = tx
		y = ty
		other.alarm[0] = 30
		
	}
	
	
}
if arrived {
	if array_length(hero_aura_arrays) <= 0 {
		
	}
	
}