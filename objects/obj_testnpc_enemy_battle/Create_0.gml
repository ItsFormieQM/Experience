stats = {
	name: "Test Froggit",
	hp: 120,
	def: 2,
}
xpos = 520 + camx_ab
ypos = 220 + camy_ab
spdr = point_distance(x,y,xpos,ypos) / 20
move_towards_point(xpos,ypos,spdr)
battleintro = true
aura = []
