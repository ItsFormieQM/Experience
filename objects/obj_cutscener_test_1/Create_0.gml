ran = false
executed = false
alarms = []
if !variable_instance_exists(id,"spawned") {
	spawned = true
}
with obj_mainchara {
	x = 3648
	y = 3488
}
mus_fade(60,0)
song = []