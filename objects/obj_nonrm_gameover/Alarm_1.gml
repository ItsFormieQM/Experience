
randomise()
var i = choose(1,1,1,0,0,0,0)
sdm(i)
instance_destroy(obj_dialogue)
cmd_dialogue_play("gameover_1",true,i)
with obj_dialogue {
	depth =-99999999999
}
random_set_seed(global.flag[Flag.Game_Seed],true)
alarm[3] = 30