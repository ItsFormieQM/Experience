if place_meeting(x,y,player) {
	if !touched {
		with player {
			onwater = false
		}
		touched = true
	}
}
else {
	touched = false
}