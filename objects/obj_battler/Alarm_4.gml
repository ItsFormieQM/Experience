if (on == false)
{
	if (heartdraw == true)
	{
		heartdraw = false
		on = true
		clap += 0.5
	}
}
if (on == false)
{
	if (heartdraw == false)
	{
		snd_play(snd_change)
		on = true
		heartdraw = true
	}
}
on = false
if (clap > 2 / 2)
{
	if false {}
	//if (global.battlegroup == 200)
	//{
	//	with (tb)
	//		instance_destroy()
	//	instance_destroy()
	//}
	else
	{
		instance_create((obj_mainchara.x ), (obj_mainchara.y), obj_fakebattleheart_intro,{},true)
		heartdraw = 0
		obj_mainchara.depth = 100
	}
}
else
	alarm[4] = claptimer * 2
