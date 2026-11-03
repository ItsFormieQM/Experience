function Act(_name,_tp,_description) constructor {
	name = _name
	tp = _tp
	description = scr_gettext(_description)
	static acted = function() {
		
	}
}
function Act_Check(_name,_tp,_description,_output) : Act(_name,_tp,_description) constructor {
	name = "Check"
	output = _output
	acted = function() {
		
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battle_controller {
			instance_create(0,0,obj_drawer,{},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
			
		}
	}
}

function Act_MercyAdders(_name,_tp,_mercyamnt,_description,_output) : Act_Check(_name,_tp,_description,_output) constructor {
	output = _output
	name = _name
	mercyamnt = _mercyamnt
	acted = function(enemy) {
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battle_controller {
			instance_create(0,0,obj_drawer,{},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
			
		}
		with enemy {
			add_mercy(other.mercyamnt)
		}
	}
}
function Act_Damagers(_name,_tp,_mercyamnt,_description,_output,_repeat) : Act_Check(_name,_tp,_description,_output) constructor {
	output = _output
	name = _name
	dmg = _mercyamnt
	rp = _repeat
	acted = function(enemy) {
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battle_controller {
			instance_create(0,0,obj_drawer,{},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
			
		}
		with enemy {
			repeat other.rp{
				damage(other.dmg)
			}
		}
	}
}
function ActDamagers_Custom(_name,_tp,_mercyamnt,_description,_output,_repeat,customfunc) : Act_Damagers(_name,_tp,_mercyamnt,_description,_output,_repeat) constructor {
	selfcustfunc = customfunc
	acted = function(enemy) {
		global.selectedenemeynormal = enemy
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battle_controller {
			instance_create(0,0,obj_drawer,{},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
			
		}
		with obj_battlelooper {
			array_push(functions,other.selfcustfunc)
		}
	}

}
function Spare() constructor {
	
}