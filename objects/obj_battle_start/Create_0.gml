global.on_battle = true
obj_mainchara.image_speed = 1
instance_create(obj_mainchara.x,obj_mainchara.y,obj_battle_marker)
start = true
sp = 15
timer = 0
center_x = 0
center_y = 0
scr_fadeout(global.current_mus,300,0)
obj_mainchara.sprite_index = spr_kris_fall
alarm[0] = 18
event_user(1)