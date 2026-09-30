function scr_get_custom_roomname(rm){
	switch rm {
		case room_test:
			return "Testing Zone"
		case room_luzaro_beach_wharf:
			return "Luzaro Wharf"
		case room_deped_hallway_down:
			return "School Hallway - Lower"
		default:
			return "Unknown"
	}
}