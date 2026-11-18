if !is_dreamworld() {
	draw_self()
}
else {
	gpu_set_fog(true,make_colour_rgb(1,196,255),0,1)
	draw_self()
	gpu_set_fog(false,c_black,0,1)
}