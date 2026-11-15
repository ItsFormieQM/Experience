snd_play(snd_spare,2.5)
for (var i = 0; i < len(global.normalbattle_enemyinst);i++) {
	if global.normalbattle_enemyinst[i] == id {
		global.normalbattle_enemyinst[i] = none
		break
	}
}
image_speed = 0
var sparer = instance_create(x,y,obj_spareanim)
global.flag[Flag.Story_SusieState_1] = SusieState_1.Spared
sparer.image_index = image_index
sparer.sprite_index = sprite_index
sparer.image_xscale = image_xscale
sparer.image_yscale = image_yscale
instance_destroy()