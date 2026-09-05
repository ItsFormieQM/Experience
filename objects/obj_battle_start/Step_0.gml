if obj_mainchara.image_index >= obj_mainchara.image_number - 1{
	obj_mainchara.image_speed = 0
	obj_mainchara.image_index = obj_mainchara.image_number - 1
}
if !instance_exists(obj_battle_controller) {
	timer++
	with obj_mainchara {
		if distance_to_point(other.center_x,other.center_y) <= 0.5 {
			with obj_battle_start {
				event_user(0)
			}
		}
	}
	if timer >= 50 {
		if variable_instance_exists(self,"song") {
			instance_create(0,0,obj_battle_controller,{mus: song})
		}
		else {
			instance_create(0,0,obj_battle_controller,{})
		}
		instance_destroy()
	}
}
if start {
	
	
	with obj_kris_centerer {
		other.center_x = x + (sprite_get_width(sprite_index) / 2 - sprite_get_xoffset(sprite_index)) * image_xscale
		other.center_y = y + (sprite_get_height(sprite_index) / 2 - sprite_get_yoffset(sprite_index)) * image_yscale
		
	}
	with obj_mainchara {
		move_towards_point(other.center_x,other.center_y,other.sp)
	}
}