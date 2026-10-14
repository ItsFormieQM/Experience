depth = obj_mainchara.depth

alarm[0] = (15 + random(5)) * 2
x = obj_mainchara.x 
y = obj_mainchara.y - 51
if !global.skip_trueb_intro {
	visible = true
	snd_play(snd_notice)
}
else {
	alarm[0] = 1
}
//global.interact = 3
//if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled && FL_SparedSpecific == 0)
//	sprite_index = spr_exc_f
//action_move_to(obj_mainchara.x, (obj_mainchara.y - 11))
