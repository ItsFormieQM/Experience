depth = layer_get_depth("TECHNICAL")
alarm[2] = 30 * 2
alarm[4] = 1 
heartdraw = false
on = false
clap = 0
depp = -600
claptimer = 2 
mus_fade(1,0)
tb = instance_create(0,0,obj_tempblack)
tb.depth = depth + 10
global.flag[Flag.On_RealBattle] = true