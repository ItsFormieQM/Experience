function Item(_name,_description,_usescr,_argarray) constructor{
	name = _name
	description = _description
	exec = _usescr
	args = _argarray
}


function item_heal(num) {
	for (var i = 0; i < len(global.hp); i++) {
		global.hp[i] += num
		global.hp[i] = clamp(global.hp[i],0,global.maxhp[i])
	}
	snd_play(snd_heal,1.2)
	
}

function scr_item_parse(temp) {
	for (var i = 0; i < len(temp); i++) {
		
	}
}
function scr_item_function_stringify(ifunc) {
	var temp = script_get_name(ifunc)
	return temp
}
