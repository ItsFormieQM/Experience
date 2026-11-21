if timer >= 0 {
	timer++
}
if timer >= 60*5 {
	instance_create(0,0,obj_cutscener_drw_forestnight_sodark)
	timer = -1
	instance_destroy(wall)
}