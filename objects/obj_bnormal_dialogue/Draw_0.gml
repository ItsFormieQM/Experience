// i hope this wont end up a disaster
draw_self()
if !stopprocess {
	slower++
}
draw_set_font(fnt_battle)
if slower >= 2 && !stopprocess{
	slower = 0
	index++
	if strat(teststr,index) == "/"{
		if strat(teststr,index+1) == "E" {
			typersnd_play(snd)
			stopprocess = true
			
		}
	}
	
	if !stopprocess {
		vst += strat(teststr,index)
		typersnd_play(snd)
	}
}
draw_set_colour(c_black)
var xoff = 0
var yoff = 0
var vsst = vst
for (var i = 1; i <= string_length(vsst);++i) {
	
	var char_1 = string_char_at(vsst,i)
	
	if char_1 == "^" { 
		var char_2 = string_char_at(vsst,i+1)
		if char_2 == "/" {
			yoff += string_height(string_char_at(vsst,i))+3
			i += 1
			xoff = 0
			continue
			
		}	
		else if char_2 == "R" {
			col = c_red
			i += 1
			continue
		}
		
		else if char_2 == "W" {
			col = c_white
			i += 1
			continue
			
		}
		else if char_2 == "Y" {
			col = c_yellow
			i += 1
			continue
		}
		else {
			continue
		}
	}
	
	//draw_set_colour(col)
	//draw_text(,,string_char_at(vsst,i))
	if xoff >= sprite_width - (30*image_xscale) {
		sdm(xoff)
		sdm("wtf")
		yoff += string_height(string_char_at(vsst,i))+3
		xoff = 0
		
		
	}
	draw_text_ext_transformed_colour(
		bbox_left+9+xoff,(bbox_top+6)+yoff,char_1,1,999,1,1,0,col,col,col,col,1
	)
	xoff += string_width(string_char_at(vsst,i))
	
}

