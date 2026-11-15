function cmd_room_goto(rm){
	if string_canbe_int(rm) {
		rm = real(rm)
	}
	else {
		rm = asset_get_index(rm)
	}
	if room_exists(rm) {
		room_goto(rm)
	}
}