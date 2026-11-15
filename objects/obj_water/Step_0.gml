if place_meeting(x,y,player) {
	if !touched {
		with player {
			onwater = true
		}
		touched = true
	}
}
else {
	touched = false
}