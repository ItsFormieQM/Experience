
randomise()
var i = choose(1,1,1,1,1,1,0)
sdm(i)
cmd_dialogue_play("gameover_1",true,i)
random_set_seed(global.flag[Flag.Game_Seed],true)
alarm[3] = 30