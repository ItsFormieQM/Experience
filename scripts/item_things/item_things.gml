function Item(_name,_description,_usescr) constructor{
	name = _name
	description = _description
	exec = _usescr
}

function Heal_Item(_name,_description,_usescr,_hpamt) : Item(_name,_description,_usescr) constructor{
	healhp = _hpamt
	exec = method(self,function() {
		global.hp[0] += healhp
		snd_play(snd_heal,1.2)
	})
}

