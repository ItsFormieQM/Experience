ran = false
executed = false
alarms = []
if !variable_instance_exists(id,"spawned") {
	spawned = false
}
spawned = true
show_debug_message($"Deltatime: {global.deltatime}")