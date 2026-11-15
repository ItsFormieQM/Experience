if place_meeting(x,y,obj_mainchara) {
	if !touched { 
		depth = obj_mainchara.depth -1
		touched = true
	}
}
else {
	if touched {
		touched = false
		depth = obj_mainchara.depth + 1
	}
}	