function scr_in_school(_room){
	if !room_exists(_room) {
		return false
	}
	if room == room_deped_hallway_down {
		return true
	}
	if room == room_deped_classroom_4_ph {
		return true
	}
	if room == room_deped_hallway_up {
		return true
	}
	return false
}