emotion = floor(image_index)
if emotion == 0 {
	normal_anim = true
	emote_normal = true
	sprite_index = spr_toriel_face_dialogue_normal
	image_speed = 7
}
else if emotion == 2 {
	sprite_index = spr_toriel_face_dialogue_side	
	normal_anim = true
	image_speed = 7
}
else {
	noanim = true
	normal_anim = false
	image_speed = 0
}
image_index = 1