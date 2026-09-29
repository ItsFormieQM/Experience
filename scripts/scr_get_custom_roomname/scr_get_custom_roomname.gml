function scr_get_custom_roomname(rm){
	var rm_name = room_get_name(rm)
	switch rm_name {
		case "room_test":
			return "Testing Zone"
		case "room_luzaro_beach_wharf":
			return "Luzaro Wharf"
		default:
			return "Unknown"
	}
}