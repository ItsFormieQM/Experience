hurtspr = spr_froggit_npc_hurt
ogspr = sprite_index

stats = {
	name: "Test Froggit",
	maxhp: 120,
	hp: 120,
	def: 2,
	spareable: false,
	
}
#macro none "none"
idkabtts = function() {
	static con = 0
	con++
	if con == 1 {
		with global.selectedenemeynormal  {
			damage(-999)
			
		}
		global.tp -= 90
		con++
	}
	else if con == 30 {
		with global.selectedenemeynormal {
			damage(random(0.65*global.selectedenemeynormal.stats.hp))
		}
		con++
	}
	else if con == 60 {
		con = 0
		with global.selectedenemeynormal{
			damage(random(0.99*global.selectedenemeynormal.stats.hp))
		}
		with obj_battlelooper {
			pop_loopfunc(1)
		}
	}
}
array_push(
	global.actables,
	{
		_id: id, 
		actables: [
			new Act_Check("Check",0,none,["#t000^002^W* Test Froggit - ATK -666 DEF 67^/* Life's difficult for this enemy.^/* Try using the ^YCOMPLIMENT^W act?"]),
			new Act_MercyAdders("Compliment",0,99,none,["#t000^002* Froggit didn't understand what^/  you said, ^020^002but was flattered anyway."]),
			
			new ActDamagers_Custom("X-Insult",0,20,none,["#t000^002* You insulted the enemy.^/* The enemy was harmed!"],1,{name: 1, func: idkabtts}) 
		]
	}
)

shudder = false
con = 0
debughpshow = false
damage = function(dmg = -1) {
	
	
	if dmg > 0 {
		dmg = (dmg / stats.def) + irandom_range(stats.def-0.3321,stats.def+0.7953) 
		snd_play(snd_enemy_damage,1.2)
		shudder = true
		alarm[1] = 1
	}
	
	stats.hp -= round(dmg)
	stats.hp = clamp(stats.hp,0,stats.maxhp)
	
	show_debug_message($"DAMAGE NUMBER: {dmg}")
	var dmger = instance_create(bbox_left+(sprite_width/2)-4,y,obj_damage_writer,{damage: round(dmg),colour: c_red},true)
	
}
shudder_amnt = 16
add_mercy = function(dmg = 0) {
	if dmg <= 0 {
		dmg = 0
	}
	
	var dmger = instance_create(bbox_left+(sprite_width/2)-4,y,obj_damage_writer,{damage: round(dmg)},true)
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