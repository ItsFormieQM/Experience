if global.a_press {
	index-- 
	if index <= -1 {
		index = array_length(positionmap) - 1
	}
	sdm(index)
	sdm(positionmap)
}
if global.d_press {
	index++ 
	if index >= array_length(positionmap) {
		index = 0
	}
	sdm(index)
	sdm(positionmap)
}

if global.interacted {
	global.choice = index
	sdm(index)
	
	instance_destroy()
}
if !ran {
	sdm(_x)
	sdm(_x)
	ran = true
}
_x = positionmap[index].xpos
_y = positionmap[index].ypos
