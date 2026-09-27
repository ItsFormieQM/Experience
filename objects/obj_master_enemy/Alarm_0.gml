attacked = false
x = old_x
y = old_y
if instance_exists(obj_mainchara) {
	with obj_mainchara {
		sprite_index = spr_kris_lw_battle_idle
		image_index = 1
		image_speed = 1
	}
	obj_battle_controller.counter_attack = true
}
