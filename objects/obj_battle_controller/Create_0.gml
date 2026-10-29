song = []
if global.chapter == 1 {
	song[0] = new_mus_play(mus_battle_pd,1.5)
}	
for (var i = 0; i < len(global.normalbattle_heroinst); i++) {
	if i_exists(global.normalbattle_heroinst[i]) {
		global.normalbattle_heroinst[i].setidle_pos()
	}	
}
instance_create(x,y,obj_battle_ui_fight_kris,{},true)

if i_exists(obj_drawer) {
	instance_destroy(obj_drawer)
}
sel_fight = false
sel_fight_index = 0
sel_act = false
sel_act_index = 0
sel_item = false
sel_item_index = 0
sel_spare = false
sel_spare_index = 0
sel_defend = false
sel_defend_index = 0
alarm[0] = 5
bp = 0
bpy = 152 
intro = 1
xx = camx_ab
yy = camy_ab