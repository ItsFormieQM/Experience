
if vaporize {
	
	while true {
		
		
		i++
		if i >= len(data) {
			break
		}
		var val = data[i]
		if val == "0" {
		
			xx += w
		}	
		else if val == "1" {
			instance_create(xx,yy,obj_whtpxlgrav)
			
			xx += w
		}
		else if val == "2" {
			xx = ogxx
			yy += h
			vaporize = false
			alarm[1] = 30
			break
		}
		else if val == "3" {
			draw_sprite_ext(
				spr_whitepixel,
				0,
				xx,
				yy,
				1,
				1,
				0,
				c_black,
				1
			)
			xx += w
		}
	}
}
draw_self()