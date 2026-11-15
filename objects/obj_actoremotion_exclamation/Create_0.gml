snd_play(snd_notice)

if i_exists(actor) {
	obj_name = actor.object_index
}
else {
	obj_name = noone
}
sdm(obj_name)
if obj_name == obj_mainchara_actor {
	myw = (actor.sprite_width + actor.x) - 34.5
	myh = (actor.sprite_height + actor.y) - 130
}
else if obj_name == obj_pink_actor {
	myw = actor.x / 6 + 60
	myh = actor.y / 6 + 123
}
else if obj_name == obj_susie_actor {
	myw = actor.x
	myh = actor.bbox_top - 12.5
}
else {
	myw = camx_ab
	myh = camy_ab
}

x = myw
y = myh
alarm[0] = delay

