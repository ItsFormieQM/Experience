if !stop_aura {
	timer++
	var delay = 1
	if timer >= delay {
		array_push(position_map,{sprite: sprite_index, sprite_indice: sprite_index, x_pos: x, y_pos: y,alpha: 0.5})
		timer = 0
	}
}
else if !attacked && stop_aura {
	timer = 0
}
if attacked {
	stop_aura = true
	timer_1++
	var delay = 4
	if !ran {
		old_x = x
		old_y = y
		ran = true
		alarm[0] = 60 * 0.8
		timer_1 = delay
		instance_create(x - 70,y,obj_number_indicator,{number: damage_took},true)
	}
	var decay = 2
	if timer_1 >= delay {
		shaker_strength = -1 * shaker_strength
		x += shaker_strength
		shaker_strength -= decay
		timer_1 = 0
		show_debug_message("RAN:")
	}
}
if !attacked {
	if point_distance(x,y,old_x,old_y) <= sp {
		sp = 0
	}
}
if !ran_1 && instance_exists(obj_battle_controller) && obj_battle_controller.begin_counter_attack {
	if !instance_exists(obj_battle_border) {
		instance_create_layer(320,200,"Instances",obj_battle_border)
	}
	show_debug_message("ran")
	ran_1 = true
}
if instance_exists(obj_battle_controller) {
	if obj_battle_controller.begin_counter_attack {
		attack_timer++
		attack_cooldown = 200
		if obj_battle_controller.battle_plot == 1 {
			if attack_timer >= attack_cooldown {
				if instance_exists(obj_soul_battle) {
					instance_create(choose(obj_soul_battle.x + 180, obj_soul_battle.x + 180),obj_soul_battle.y,obj_bullet_israel_whole,{move_left: true},true)
				}
				attack_timer = 0
			}
		}
	}
}