if layer_exists("Dark") {
	
	depth = layer_get_depth("Dark")
} 
else {
	show_error("Layer named \"Dark\" does not exist",true)
}
darksurf = surface_create(camx_ab+camw_ab,camy_ab+camh_ab)
pureblack = false
ralph = 0
manualthing = false
sdm("black")
draw_set_circle_precision(64)