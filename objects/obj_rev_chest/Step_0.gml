if i_exists(obj_inventory_handler) && obj_inventory_handler.astate {
	exit
}
rz = global.interacted
if place_meeting(x,y,player) && !i_exists(obj_drawer) && rz && z = false{
	SCR_TEXT(msc)
	with obj_drawer {
		owner = other.id
	}
	ind++
	z = true
	sdm("wtf")
	rz = false
}
if !z {
	exit
}
if con == floor(con) && con < len(global.msg){
	if len(awards) > 0 {
		if awards[con] != none {
			array_push(global.player_items,awards[con])
		}
	}
	else {
		sdm("empty")
	}
	sdm(global.player_items)
	con += 0.1
}
if z && !i_exists(obj_drawer) {
	if !reuse {
		i_destroy()
	}
	z = false
	ind = -1

}