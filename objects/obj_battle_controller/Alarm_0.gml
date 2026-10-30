global.msg = []
global.msg[0] = "#t000^002#fnt001* A pair of wild Test Froggits^/  ambushes you!"
for (var i = 0; i < len(global.msg); i++) {
	global.xx_offset[i] = 12
	global.yy_offset[i] = 960 / 2 + 150
}
instance_create(0,0,obj_drawer,{},true)
global.dialogue_enable_progress = false