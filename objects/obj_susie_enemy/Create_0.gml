hurtspr = spr_susie_bhurt
ogspr = sprite_index
image_xscale *= -1
stats = {
	name: "Susie",
	maxhp: 180,
	hp: 180,
	atk: 15,
	def: 5,
	spareable: false,
	sparemeter: -9
}
sparemethod = 
new Spare(
	["#t000^002#fnt001* You spared Susie!"],
	["#t000^002#fnt001^W* You tried sparing Susie...^/^015^002* But Susie is too determined to^/  defeat you."],
	0
) 
global.cbmessage[0] = "#t000^002#fnt001* Susie attacks!"
sparealarmnum = 2
dmger = noone
altmercy = 0
idkabtts = function() {
	
	with obj_susie_enemy {
		altmercy++
		
	}
	exit
	
}
idkabtts_1 = function() {
	
	if !variable_instance_exists(object_index,"son") {
		son = 0
		sdm("bru")
	}
	if is_undefined(son) {
		son = 0
	}
	son++
	with obj_hero_kris {
		actout = true
	}
	if son == 1 {
		global.dialogue_enable_progress = false
		with global.selectedenemeynormal  {
			if stats.hp > 20 {
				damage(random_range(con/100*global.selectedenemeynormal.stats.hp,0.9*global.selectedenemeynormal.stats.hp))
			}
			else {
				damage(-1)
			}	
			with obj_hero_kris {
				xslashaura = true
				image_index = 0
				sprite_index = spr_kris_battle_xslash
				image_speed = 1
				snd_play(snd_xslash_slash)
				onetimeanim = true
			}
		}
	}
	
	else if son == 30 {
		
		with global.selectedenemeynormal{
			damage(random_range(con/100*global.selectedenemeynormal.stats.hp,0.95*global.selectedenemeynormal.stats.hp))
		}
		with obj_battlelooper {
			//with global.selectedenemeynormal {
			//	var struct = static_get(idkabtts)
			//	if struct != undefined {
			//	    variable_struct_remove(struct, "con")
			//	}
			//}
			with obj_hero_kris {
				
				image_index = 0
				
				image_speed = 1
				snd_play(snd_xslash_slash)
				onetimeanim = true
			}
			
			
			sdm("worked")
		}
		
		
	}
	else if son >= 55 {
		son = 0
		exit
		with obj_hero_kris {
				
			image_index = 0
			sprite_index = spr_kris_lw_battle_idle
			image_speed = 1
			onetimeanim = false
				
		}
		
		global.dialogue_enable_progress = true
		son = undefined
		with obj_battlelooper {
			with obj_hero_kris {
				actout = false
			}
			pop_loopfunc(1)
		}
	}
	
}


array_push(
	global.actables,
	{
		_id: id, 
		actables: [
			new Act_Check("Check",0,none,["#t000^002^W* SUSIE - ATK 15 DEF 5^/* Looks determined to fight you.^/* Try convincing her to stop?"]),
			//new Act_MercyAdders("Convince",20,100,none,["#t000^002* Froggit didn't understand what^/  you said, ^020^002but was flattered anyway."]),
			new Act_MercyAdders_Custom("Convince",35,none,["#t000^002^W* You tried convincing Susie."],0,{name: 1, func: idkabtts}),
			new ActDamagers_Custom("X-Slash",95,20,none,["#t000^002* Kris used X-Slash."],1,{name: 1, func: idkabtts_1}) 
		]
	}
)
dialogue = [
{
	txt: ["You're doomed..."],snd: snd_txtsus
}

]
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
	dmger = instance_create(xstart-(106/2)-12,ystart-yoff,obj_damage_writer,{damage: floor(dmg)},true)
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
	else if dmg == 0 {
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
xpos = i_exists(obj_susie_actor) ? obj_susie_actor.x+160:0
ypos = i_exists(obj_susie_actor) ? obj_susie_actor.y:0


spdr = point_distance(x,y,xpos,ypos) / 20
move_towards_point(xpos,ypos,spdr)
battleintro = true
aura = []
selected = false
