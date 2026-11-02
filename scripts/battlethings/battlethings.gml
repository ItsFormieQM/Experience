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
		var parent = static_get(static_get(self))
		parent.acted()
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
function Act_MercyAdders(_name,_tp,_description,_output) : Act(_name,_tp,_description) constructor {
	output = _output
	 
	acted = function() {
		var parent = static_get(static_get(self))
		parent.acted()
		global.msg = []
		
	}
}