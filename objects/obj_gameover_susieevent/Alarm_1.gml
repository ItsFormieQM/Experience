global.flag[Flag.On_Battle] = false
global.cutscene = false
sdm("ran")
global.hp[0] = global.maxhp[0]
global.tp = global.maxhp[0] * irandom_range(0.1,0.3)
cmd_warp(global.prev_room,0)