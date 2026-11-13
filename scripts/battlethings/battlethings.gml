function Act(_name,_tp,_description) constructor {
	name = _name
	tp = _tp
	description = scr_gettext(_description)
	acted = function() {
		
	}
}

function Act_Check(_name,_tp,_description,_output) : Act(_name,_tp,_description) constructor {
	name = "Check"
	output = _output
	acted = function() {
		global.dialogue_enable_progress = true
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battlecontroller {
			instance_create(0,0,obj_drawer,{identifier:10},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
		}
	}
}

function Act_MercyAdders(_name,_tp,_mercyamnt,_description,_output) : Act_Check(_name,_tp,_description,_output) constructor {
	tp = _tp
	output = _output
	name = _name
	mercyamnt = _mercyamnt
	acted = function(enemy) {
		var _tp = tp;
		var _mercyamnt = mercyamnt;
		global.tp -= _tp
		global.dialogue_enable_progress = true
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battlecontroller {
			instance_create(0,0,obj_drawer,{identifier:10},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
		}
		with enemy {
			add_mercy(_mercyamnt)
		}
	}
}

function Act_Damagers(_name,_tp,_mercyamnt,_description,_output,_repeat) : Act_Check(_name,_tp,_description,_output) constructor {
	tp = _tp
	output = _output
	name = _name
	dmg = _mercyamnt
	rp = _repeat
	acted = function(enemy) {
		var _tp = tp;
		var _rp = rp;
		var _dmg = dmg;
		global.tp -= _tp
		global.dialogue_enable_progress = true
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battlecontroller {
			instance_create(0,0,obj_drawer,{identifier:10},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
		}
		with enemy {
			repeat _rp {
				damage(_dmg)
			}
		}
	}
}

function ActDamagers_Custom(_name,_tp,_mercyamnt,_description,_output,_repeat,customfunc) : Act_Damagers(_name,_tp,_mercyamnt,_description,_output,_repeat) constructor {
	tp = _tp
	selfcustfunc = customfunc
	acted = function(enemy) {
		var _tp = tp
		var _selfcustfunc = selfcustfunc
		global.tp -= _tp
		global.dialogue_enable_progress = true
		global.selectedenemeynormal = enemy
		sdm("te")
		sdm(global.selectedenemeynormal)
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battlecontroller {
			instance_create(0,0,obj_drawer,{identifier:10},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
		}
		with obj_battlelooper {
			array_push(functions, _selfcustfunc)
		}
	}
}
function Act_MercyAdders_Custom(_name,_tp,_desc,_output,_mercyamnt,_cfunc) constructor {
	tp = _tp
	output = _output
	name = _name
	mercyamnt = _mercyamnt
	cfunc = _cfunc
	acted = function(enemy) {
		var _tp = tp
		var _mercyamnt = mercyamnt
		var func = cfunc
		global.tp -= _tp
		global.dialogue_enable_progress = true
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battlecontroller {
			instance_create(0,0,obj_drawer,{identifier:10},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
		}
		with obj_battlelooper {
			array_push(functions, func)
		}
		if _mercyamnt > 0 {
			with enemy {
				add_mercy(_mercyamnt)
			}
		}
	}
}
function Spare(successmsg,failmsg,pitymercy) constructor {
	ptm = pitymercy
	smsg = successmsg
	fmsg = failmsg
	spare = function(enemy) {
		if i_exists(obj_drawer) {
			instance_destroy(obj_drawer)
		}
		var output = ""
		var _fmsg = fmsg;
		var _ptm = ptm;
		var _smsg = smsg;
		if !enemy.stats.spareable {
			output = _fmsg
			if _ptm != none || _ptm > 0 {
				with enemy {
					add_mercy(floor(_ptm))
				}
			}
			
		}
		else {
			output = _smsg
			with enemy {
				alarm[sparealarmnum] = 30
			}
		}
		
		global.dialogue_enable_progress = true
		global.msg = []
		for (var i = 0; i < len(output); i++) {
			global.msg[i] = output[i]
		}
		for (var i = 0; i < len(global.msg); i++) {
			global.xx_offset[i] = 12
			global.yy_offset[i] = 960 / 2 + 150
		}
		with obj_battlecontroller {
			instance_create(0,0,obj_drawer,{identifier:10},true)
		}
		for (var i = 0; i < len(global.heroes); i++) {
			with global.heroes[i] {
				actstate()
			}
		}
	}
}
///@desc Sets up talk for enemy
function scr_enemytalk(_x,_y,msgarray,_snd=snd_txt1,scalerarr) {
	var dialoguer = instance_create(_x,_y,obj_bnormal_dialogue,{msg: msgarray, snd:_snd,owner: id,scalers: scalerarr},true)
	
}
function CustomBattleMusicData(index,volume) constructor {
	mus = index
	vol = volume
}
