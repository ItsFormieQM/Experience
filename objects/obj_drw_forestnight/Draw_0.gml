if false {
	draw_tilemap(ftilemap,0,0)
}
else {
	var oldshd = shader_current()
	shader_reset()
	draw_tilemap(ftilemap,0,0)
	shader_set(oldshd)
	
}
if !surface_exists(dsurf) {
	dsurf  = surface_create(640,480)
	
}
exit