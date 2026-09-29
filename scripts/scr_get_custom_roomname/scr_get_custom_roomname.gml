function scr_get_custom_roomname(){
	var rm_name = room_get_name(room)
	switch rm_name {
		case room_test:
			return "Testing Zone"
		case room_luzaro_beach_wharf:
			return "Luzaro Wharf"
		default:
			return "Unknown"
	}
}