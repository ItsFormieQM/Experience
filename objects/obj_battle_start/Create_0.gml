global.on_battle = true
scr_enemy_init(enemy_type)
show_debug_message($"GLOBAL ENEMY ARRAY, {global.enemies}")
obj_mainchara.image_speed = 1
instance_create(obj_mainchara.x,obj_mainchara.y,obj_battle_marker)
for (var i = 0; i < array_length(global.enemies); i++) {
	instance_create(obj_mainchara.x,obj_mainchara.y,global.enemies[i])
}
start = true
start_enemy = true
sp = 15
timer = 0
center_x = 0
center_y = 0
enemy_sp = sp
scr_fadeout(global.current_mus,300,0)
obj_mainchara.sprite_index = spr_kris_fall
alarm[0] = 18
event_user(1)