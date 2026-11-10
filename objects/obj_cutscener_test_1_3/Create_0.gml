ran = false
executed = false
alarms = []
if !variable_instance_exists(id,"spawned") {
	spawned = true
}
with obj_mainchara {
	x = 3739
	y = 3829
}
mus_fade(60,0)
mus_toggle()
song = []
// BATTLE TESTER CUTSCENE MODE