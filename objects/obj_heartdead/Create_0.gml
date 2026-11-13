alarm[0] = 20 * 2
image_speed = 0

msgnum = -1
dingus = 0
currentvol = 1
heartcon = 0
hearttimer = 0
if !global.flag[Flag.Story_FightingSusie_1] {
	instance_destroy()
}
with obj_overworld_controller {
	other.x = playerx 
	other.y = playery
}
sdm($"heartx: {x}")
sdm($"hearty: {y}")
