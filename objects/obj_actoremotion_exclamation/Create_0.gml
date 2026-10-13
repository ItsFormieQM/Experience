snd_play(snd_notice)
obj_name = actor.object_index
show_debug_message(obj_name)
if obj_name == obj_mainchara_actor {
	myw = (actor.sprite_width + actor.x) - 34.5
	myh = (actor.sprite_height + actor.y) - 123
}
else if obj_name == obj_pink_actor {
	myw = actor.x / 6 + 60
	myh = actor.y / 6 + 123
}

x = myw
y = myh
alarm[0] = delay

