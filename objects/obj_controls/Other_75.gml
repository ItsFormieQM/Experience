// 1. Grab the event metadata cleanly (using _event_type to avoid reserved name conflict)
var _event_type = ds_map_find_value(async_load, "event_type");
var pad_index   = ds_map_find_value(async_load, "pad_index");

// 2. A gamepad was just connected
if (_event_type == "gamepad discovered") {
    // Get the description name string and force lowercase to prevent mismatching cases
    
	lcon_id  = pad_index;
    has_lcon = true;
	rcon_id  = pad_index;
    has_rcon = true;
	show_debug_message("ohhhh found it")
}

// 3. A gamepad was turned off or lost connection
if (_event_type == "gamepad lost") {
    if (pad_index == lcon_id) {
        lcon_id  = -1;
        has_lcon = false;
    }
    if (pad_index == rcon_id) {
        rcon_id  = -1;
        has_rcon = false;
    }
	show_debug_message("scann")
}
