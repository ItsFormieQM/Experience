if global.flag[Flag.On_Battle] {
	var _layer = "Lower"
	layer_add_instance(_layer,id)
}
else {
	layer_add_instance(og_layer,id)
}