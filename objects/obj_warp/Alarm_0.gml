instance_create(0,0,obj_tp_manager)
obj_tp_manager.slot = target_marker_slot
obj_tp_manager.pref_spr = tp_sprite
randomise()
var chancer = random_range(0,100) 
random_set_seed(global.flag[Flag.Game_Seed],true)
if chancer >= 99.99 {
	room_goto(room_dih)
}
else {
	
	
	room_goto(target_room)
}