function cmd_toggle_room_persistence(rm){
	rm = asset_get_index(rm)
	if rm == -1 {
		return -1
	}
	room_set_persistent(rm,!rm.persistent)
	
}