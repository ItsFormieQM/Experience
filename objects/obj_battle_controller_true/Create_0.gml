global.selected = noone
scr_truebattle_setup(global.battlegroup)
instance_create(0,0,obj_battlebt_true)
obj_heart.x = x + 8
obj_heart.y = y + 14
global.msg = []
global.msg[0] = "#t001^002* Test blocks the way!/E"
for (var i = 0; i < array_length(global.msg); i++) {
	global.xx_offset[i] = 64
	global.yy_offset[i] = 420
}
drawer = instance_create(0,0,obj_drawer)
during_round = false
global.flag[Flag.Can_DialogueFastSkip] = false
mainchara_doing = false