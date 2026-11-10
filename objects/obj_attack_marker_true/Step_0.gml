if hspeed < 0 {
	var mrkr = obj_border_parent
	if x < mrkr.x + sprite_get_width(mrkr.sprite_index) {
		instance_destroy()
	}
}