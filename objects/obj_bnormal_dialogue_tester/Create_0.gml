
count = 0
delay = 2
if variable_instance_exists(self,"kill") {
	i_destroy()
	exit
}
tf = file_text_open_read("bntestd.txt")
if tf == -1 {
	instance_destroy(id,false)
	sdm("shf")
	exit
}
msg = []
scalers = []
var i = -1

while !file_text_eof(tf) {
	i++
	
	
	msg[i] = file_text_read_string(tf)
	sdm(msg)
	file_text_readln(tf)
	if msg[i] == "end" {
		array_pop(msg)
		var j = -1
		while !file_text_eof(tf) {
			j++
			scalers[j] = file_text_read_real(tf)
			file_text_readln(tf)
		}
		break
	}
}
file_text_close(tf)
sdm(msg)
instantiate = function() {
	snd = snd_txt1
	if count >= len(msg) {
		
		stopprocess = true
		i_destroy()
		instance_create(x,y,object_index)
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
	charw = 0
	teststr = msg[count]
	
	
	for (var i = 1; i <= len(teststr); i++) {
		if strat(teststr,i) == "^" && strat(teststr,i+1) == "/" {
			newlines++
		}
	}
	for (var i = 0; i <= len(teststr);i++) {
		
		if strat(teststr,i) == "^" && strat(teststr,i+1) == "/" {
			break
		}
		charw++
	}
	
	image_xscale = string_width(teststr) / (charw*11)
	sdm(image_xscale)	//
	try {
		image_xscale = scalers[count]
	}
	catch(ex) {
		image_xscale = scalers[len(scalers)-1]
	}
	
	sdm(image_xscale) 
	teststr += "/E"
	image_yscale = (newlines / 2) 
	if newlines > 1 {
		image_yscale -= 0.175 * (newlines - 1)
	}
	
}	
instantiate()