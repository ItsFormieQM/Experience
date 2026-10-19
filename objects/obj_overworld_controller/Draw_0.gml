draw_self()
if inventory_state >= Inventory_State.active_firstchoice {
	var myx = camx_ab
	var myy = camy_ab
	
	var idealx = myx + 30
	var idealy = myy + 30
	draw_rectangle(idealx,idealy,idealx + 100, idealy + 180,false)
}