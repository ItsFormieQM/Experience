if obj_mainchara.image_index >= obj_mainchara.image_number - 1{
	obj_mainchara.image_speed = 0
	obj_mainchara.image_index = obj_mainchara.image_number - 1
}
if start && !instance_exists(obj_battle_controller)  {
	
	
	with obj_kris_centerer {
		other.center_x = x + (sprite_get_width(sprite_index) / 2 - sprite_get_xoffset(sprite_index)) * image_xscale
		other.center_y = y + (sprite_get_height(sprite_index) / 2 - sprite_get_yoffset(sprite_index)) * image_yscale
		
	}
	with obj_enemy_centerer {
		other.center_x_enemy = x + (sprite_get_width(sprite_index) / 2 - sprite_get_xoffset(sprite_index)) * image_xscale
		other.center_y_enemy = y + (sprite_get_height(sprite_index) / 2 - sprite_get_yoffset(sprite_index)) * image_yscale
		
	}
	with obj_mainchara {
		move_towards_point(other.center_x,other.center_y,other.sp)
	}
	for (var i = 0; i < array_length(global.enemies); i++) {
		with global.enemies[i]  {
			move_towards_point(other.center_x_enemy,other.center_y_enemy,other.enemy_sp)
		}
	}
}
if !instance_exists(obj_battle_controller) {
	timer++
	with obj_mainchara {
	    if point_distance(x, y, other.center_x, other.center_y) <= other.sp {
			x = other.center_x
			y = other.center_y
			speed = 0
	        with obj_battle_start {
	            event_user(0)
	        }
	    }
	}
	for (var i = 0; i < array_length(global.enemies); i++) {
			with global.enemies[i] {
			    if point_distance(x, y, other.center_x_enemy, other.center_y_enemy) <= other.enemy_sp {
					x = other.center_x_enemy
					y = other.center_y_enemy
					speed = 0
			        with obj_battle_start {
			            event_user(0)
			        }
			    }
			}
	}
	if timer >= 50 {
		if variable_instance_exists(self,"song") {
			instance_create(0,0,obj_battle_controller,{mus: song, vol: volume, pit: pitch})
		}
		else {
			instance_create(0,0,obj_battle_controller,{})
		}
		instance_destroy()
	}
}
