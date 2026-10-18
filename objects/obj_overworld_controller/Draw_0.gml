draw_self()
if inventory_state >= Inventory_State.active_firstchoice {
	var myx = x
	var myy = y
	var idealx = myx + 30
	var idealy = myy - 30
	draw_rectangle(idealx,idealy,idealx + 50, idealy + 50,false)
}