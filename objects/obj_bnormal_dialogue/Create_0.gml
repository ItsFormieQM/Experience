if !global.flag[Flag.On_Battle] {
	i_destroy()
	exit
}
count = 0
delay = 2
instantiate = function() {
	if count >= len(msg) {
		typersnd_play(snd)
		stopprocess = true
		i_destroy()
		exit
	}
	sdm($"number of drawers: {instance_number(object_index)}")
	newlines = 1
	slower = 0
	index = 0
	col = 0
	stopprocess = false
	vst = ""
	teststr = ""
	
	teststr = msg[count]
	
	
	for (var i = 1; i <= len(teststr); i++) {
		if strat(teststr,i) == "^" && strat(teststr,i+1) == "/" {
			newlines++
		}
	}
	try {
		image_xscale = scalers[count]
	}
	catch(ex) {
		image_xscale = scalers[count-1]
	}
	teststr += "/E"
	image_yscale = (newlines / 2) 
	if newlines > 1 {
		image_yscale -= 0.175 * (newlines - 1)
	}
	
}	
instantiate()