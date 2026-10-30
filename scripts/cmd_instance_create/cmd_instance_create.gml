function cmd_instance_create(obj = noone, _x = 0, _y = 0, rp = 1,vars = {}){
	
	if string_canbe_int(rp) {
		rp = floor(real(rp))
		rp = clamp(rp,1,9999)
	}
	if true {
		if string_canbe_int(_x) && string_canbe_int(_y) {
			_x = real(_x)
			_y = real(_y)
		}
		if obj == noone {
			return -1
		}
		obj = asset_get_index(obj)
		if obj == -1 {
			return -1
		}
		
		repeat floor(rp) {
			var handle = instance_create(_x,_y,obj,vars,false,true)
		}
	}
	return 0
}