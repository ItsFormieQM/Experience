hurtspr = spr_froggit_npc_hurt
ogspr = sprite_index

stats = {
	name: "Test Froggit",
	maxhp: 120,
	hp: 120,
	def: 2,
	spareable: true,
	sparemeter: 0
}
sparemethod = 
new Spare(
	["#t000^002#fnt001* You spared Test Froggit!"],
	["#t000^002#fnt001^W* You tried sparing Test Froggit,^/  but their name wasn't ^YYELLOW^W."],
	50
) 
sparealarmnum = 2
dmger = noone
#macro none "none"
idkabtts = function() {
	
	if !variable_instance_exists(object_index,"son") {
		son = 0
		sdm("bru")
	}
	son++
	if son == 1 {
		with global.selectedenemeynormal  {
			if stats.hp > 20 {
				damage(random_range(con/100*global.selectedenemeynormal.stats.hp,0.65*global.selectedenemeynormal.stats.hp))
			}
			else {
				damage(-1)
			}	
			
		}
		
		
	}
	else if son == 30 {
		with global.selectedenemeynormal  {
			if stats.hp > 20 {
				damage(random_range(con/100*global.selectedenemeynormal.stats.hp,0.65*global.selectedenemeynormal.stats.hp))
			}
			else {
				damage(-1)
			}	
			
		}
	
	}
	else if son == 60 {
		
		with global.selectedenemeynormal{
			damage(random_range(con/100*global.selectedenemeynormal.stats.hp,0.65*global.selectedenemeynormal.stats.hp))
		}
	
	}
	else if son == 90 {
		
		with global.selectedenemeynormal{
			damage(random_range(con/100*global.selectedenemeynormal.stats.hp,0.65*global.selectedenemeynormal.stats.hp))
		}
		
	}
	else if son >= 120 {
		
		with global.selectedenemeynormal{
			damage(random_range(con/100*global.selectedenemeynormal.stats.hp,0.65*global.selectedenemeynormal.stats.hp))
		}
		with obj_battlelooper {
			//with global.selectedenemeynormal {
			//	var struct = static_get(idkabtts)
			//	if struct != undefined {
			//	    variable_struct_remove(struct, "con")
			//	}
			//}
			for (var i = 0; i < len(global.normalbattle_enemyinst);i++) {
				with global.normalbattle_enemyinst[i] {
					sparemethod.spare(global.normalbattle_enemyinst[i])
				}
			}
			son = undefined
			pop_loopfunc(1)
			sdm("worked")
		}
		
		
	}
	
	sdm(con)
}
array_push(
	global.actables,
	{
		_id: id, 
		actables: [
			new Act_Check("Check",0,none,["#t000^002^W* Test Froggit - ATK -666 DEF 67^/* Life's difficult for this enemy.^/* Try using the ^YCOMPLIMENT^W act?"]),
			new Act_MercyAdders("Compliment",20,100,none,["#t000^002* Froggit didn't understand what^/  you said, ^020^002but was flattered anyway."]),
			
			new ActDamagers_Custom("X-Insult",95,20,none,["#t000^002* You insulted the enemy.^/* The enemy was harmed!","#t000^002^W* The enemy lost ^YMERCY^W, ^010^002too."],1,{name: 1, func: idkabtts}) 
		]
	}
)

shudder = false
con = 0
dmgercount = 0
debughpshow = true
kill = function() {
	
}
damage = function(dmg = -1) {
	
	
	if dmg > 0 {
		
		dmg = (dmg / stats.def) + irandom_range(stats.def-0.3321,stats.def+0.7953) 
		snd_play(snd_enemy_damage,1.2)
		shudder = true
		con = 0
		alarm[1] = 1
		stats.hp -= floor(dmg)
		stats.hp = clamp(stats.hp,0,stats.maxhp)
	}
	else {
		dmg = -1
	}
	
	
	sdm($"DAMAGE NUMBER: {dmg}")
	var yoff = 0
	if i_exists(dmger) {
		yoff = sprite_get_height(spr_numbers_yellow)*dmgercount
	}
	else {
		dmgercount = 0
		yoff = 0
	}
	dmger = instance_create(bbox_left+(sprite_width/2)-4,y-yoff,obj_damage_writer,{damage: floor(dmg)},true)
	dmgercount++
}
shudder_amnt = 16
add_mercy = function(dmg = 0) {
	if dmg < 0 {
		snd_play(snd_mercyremove)
		var dmger = instance_create(bbox_left+(sprite_width/2)-4,y,obj_damage_writer,{damage: round(dmg)},true)
		with dmger {
			type = 5
		}
	}
	else {
		var dmger = instance_create(bbox_left+(sprite_width/2)-4,y,obj_damage_writer,{damage: round(dmg)},true)
		with dmger {
			type = 5
		}
		snd_play(snd_mercyadd,1.2)
	}
	stats.sparemeter += clamp(dmg,-100,100)
	if stats.sparemeter >= 100 {
		stats.spareable = true	
	}	
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