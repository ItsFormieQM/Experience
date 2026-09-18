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
		
		
		if obj_battle_controller.battle_plot == 1 {
			
			attack_cooldown = irandom_range(50,120)
		
			if attack_timer >= attack_cooldown {
				if instance_exists(obj_soul_battle) {
					//var rand = choose(0,1,2,3, 4,5,6,7)
					var rand = choose(0,1,2,3)
					switch rand {
						case 0: // Left
							instance_create(
								obj_soul_battle.x + 180,
								obj_soul_battle.y,
								obj_bullet_israel_whole,
								{move_left: true},
								true
							)
							break
						case 1: // Right
							instance_create(
								obj_soul_battle.x - 180,
								obj_soul_battle.y,
								obj_bullet_israel_whole,
								{move_right: true},
								true
							)
							break
						case 2: // Up
							instance_create(
								obj_soul_battle.x,
								obj_soul_battle.y + 180,
								obj_bullet_israel_whole,
								{move_up: true},
								true
							)
							break
						case 3: // Down
							instance_create(
								obj_soul_battle.x,
								obj_soul_battle.y - 180,
								obj_bullet_israel_whole,
								{move_down: true},
								true
							)
							break
						
						case 4: // Northeast
							instance_create(
								obj_soul_battle.x + 180,
								obj_soul_battle.y + 180,
								obj_bullet_israel_whole,
								{move_northeast: true},
								true
							)
							break
							
						case 5: // Northwest
							instance_create(
								obj_soul_battle.x - 180,
								obj_soul_battle.y + 180,
								obj_bullet_israel_whole,
								{move_northwest: true},
								true
							)
							break
						case 6: // Southeast
							instance_create(
								obj_soul_battle.x + 180,
								obj_soul_battle.y - 180,
								obj_bullet_israel_whole,
								{move_southeast: true},
								true
							)
							break
						case 7: // Southwest
							instance_create(
								obj_soul_battle.x - 180,
								obj_soul_battle.y - 180,
								obj_bullet_israel_whole,
								{move_southwest: true},
								true
							)
							break
						default:
							break
					}
				}
				attack_timer = 0
			}
		}
	}
}
if keyboard_check_pressed(ord("3")) {
	with obj_soul_battle {
		
		if soulmode == SoulMode.Red {
			switch_soulmode(SoulMode.Orange)
		}
		else {
			switch_soulmode(SoulMode.Red)
		}
	}
}