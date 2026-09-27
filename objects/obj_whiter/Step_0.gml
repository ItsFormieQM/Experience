if timer >= 60 * 7 {
    if image_alpha > 0 {
        image_alpha -= rate * 2
    }
}
else if image_alpha < 1 {
    image_alpha += rate
}
timer++
if room == room_start {
	if image_alpha <= 0 {
		room_goto(room_story)
		instance_destroy()
	}
}