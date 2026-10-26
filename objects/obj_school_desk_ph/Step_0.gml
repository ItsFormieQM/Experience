if place_meeting(x,y,obj_mainchara) {
	if !touched {
		touched = true
		depth = obj_mainchara.depth - 1
	}
}
else {
	if touched {
		touched = false
		depth = obj_mainchara.depth + 1
	}
}