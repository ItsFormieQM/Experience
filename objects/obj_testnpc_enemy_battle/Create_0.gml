stats = {
	name: "Test Froggit",
	maxhp: 120,
	hp: 120,
	def: 2,
	spareable: false,
	
}
actables = {
	
}
shudder = false
con = 0
damage = function(dmg = -1) {
	
	if dmg <= 0 {
		dmg = 0
	}
	shudder = true
	alarm[1] = 1
	stats.hp -= dmg
	stats.hp = clamp(stats.hp,0,stats.maxhp)
	show_debug_message($"DAMAGE NUMBER: {dmg}")
	var dmger = instance_create(bbox_left,y,obj_damage_writer,{damage: round(dmg)},true)
	snd_play(snd_enemy_damage,1.2)
}
shudder_amnt = 16
add_mercy = function(dmg = 0) {
	if dmg <= 0 {
		dmg = 0
	}
	
	var dmger = instance_create(bbox_left,y,obj_damage_writer,{damage: round(dmg)},true)
	with dmger {
		type = 5
	}
	snd_play(snd_mercyadd,1.2)
} 
alarm[0] = 120
xpos = 520 + camx_ab
ypos = 100 + camy_ab + ((instance_number(object_index) -1) * 72.5)

spdr = point_distance(x,y,xpos,ypos) / 20
move_towards_point(xpos,ypos,spdr)
battleintro = true
aura = []
selected = false
image_index = random_range(0,image_number-1)