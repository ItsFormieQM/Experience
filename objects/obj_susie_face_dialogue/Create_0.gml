if instance_number(obj_susie_face_dialogue) >= 2{
	instance_destroy()
}

image_speed = 0
normal_anim = true
image_index = emotion
noanim = false
emote_normal = false
emote_side = false
event_user(0)
stopped = false
sdm("SPAWNED SUSIE IS ALIVE")
sdm($"SUSIE X: {x} SUSIE Y: {y}")