if layer_exists("Dark") {
	layer = layer_add_instance("Dark",id)
	depth = layer_get_depth("Dark")
} 
else {
	show_error("Layer named \"Dark\" does not exist",true)
}
darksurf = surface_create(guiw,guih)
col = shader_get_uniform(shd_dark,"col")

sdm("black")
draw_set_circle_precision(64)