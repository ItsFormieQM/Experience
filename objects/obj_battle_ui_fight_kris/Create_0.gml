
sel_smth = false
self_x = x
self_y = y - 0.1
index = 1
fight = false
act = false
item = false
spare = false
defend = false
chose = false
ran = false
animtimer = 0
anim_spr_arr = [{}]

show_debug_message("spawned")
linecounter = sprite_get_number(spr_kris_lw_battle_uiline)
mainchara_doing = false
index_main = 0
index_fight = 0
con = 0
downstate = false
max_indexmain_bt = 4
down = function() {
	downstate = true
	alarm[0] = 1
}
vspeed = -30
y = (camh_ab+21)+camy_ab
friction = 2.4