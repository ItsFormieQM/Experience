function cmd_room_goto(rm){
	rm = asset_get_index(rm)
	if room_exists(rm) {
		room_goto(rm)
	}
}