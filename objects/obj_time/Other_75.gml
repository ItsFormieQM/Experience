var event = async_load[? "event_type"]
if event == "close_requested" || event == "OS_close_request" {
	game_end(0)
}