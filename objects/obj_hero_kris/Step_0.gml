stats = {
	name: "Kris",
	hp: global.hp[0],
	maxhp: global.maxhp[0],
	def: 5,
}
if battleend {
	if point_distance(x,y,realobj.x,realobj.y) <= spdr {
		speed = 0
		scheddel = true
		i_destroy()
		x = realobj.x
		y = realobj.y
		global.flag[Flag.On_Battle] = false
		global.canmove = true
		battleend = false
		with realobj {
			visible = true
			
		}
		if i_exists(obj_mainchara_actor) {
			with obj_mainchara_actor {
				visible = true
			}
		}
	}
}
if len(aura) <= 0 {
	if scheddel {
		
	}
}