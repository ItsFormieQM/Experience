snd_play(snd_spare,2.5)
for (var i = 0; i < len(global.normalbattle_enemyinst);i++) {
	if global.normalbattle_enemyinst[i] == id {
		global.normalbattle_enemyinst[i] = none
		break
	}
}
image_speed = 0
var sparer = instance_create(x,y,obj_spareanim)
sparer.image_index = image_index
sparer.sprite_index = sprite_index
instance_destroy()