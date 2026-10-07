_x = 624
_y = 0
ogdepth = depth
loaded = false
goto_x = 0
goto_y = 0
move_l = false
move_r = false
move_u = false
move_d = false
if !instance_exists(obj_camera_cutscene)
	instance_create(x,y,obj_camera_cutscene)
sp = 2.5
image_speed = 0
dir = 0
ran = false
#macro Left "l"
#macro Right "r"
#macro Up "u"
#macro Down "d"
noclip = false
alpha = 1
colour = 1
removed_variable_1 = false

jump_state = false
rot = 0
occupied = false
movement_frames = []
mov_append_tmr = 0
buffer = true
heart_show = false
heart_show_ran = 0
heart_aura_struct = [
	
	
]
array_push(heart_aura_struct,{spr: spr_soul_battle_start, spr_indice: 0,xscale: 1, yscale: 0.35, alpha: 0.1, alpha_regress: false})
heart_timer = 0



