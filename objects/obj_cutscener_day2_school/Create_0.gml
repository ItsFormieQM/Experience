ran = false
executed = false
alarms = []
if !variable_instance_exists(id,"spawned") {
	spawned = false
}
sdm($"Deltatime: {global.deltatime}")
spawned = true
song = []