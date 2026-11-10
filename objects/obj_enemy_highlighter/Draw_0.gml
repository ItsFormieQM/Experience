if !global.ldm {
	gpu_set_fog(true,c_white,0,0)
	image_index = owner.image_index
	draw_self()
	gpu_set_fog(false,c_black,0,1)
}
else {
	image_index = owner.image_index
	gpu_set_fog(true,c_white,0,0)
	draw_self()
	gpu_set_fog(false,c_black,0,1)
}