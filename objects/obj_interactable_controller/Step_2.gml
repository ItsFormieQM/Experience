if global.flag[Flag.On_Battle] {
	var _layer = "Lower"
	depth = layer_get_depth(_layer)
}
else {
	depth = layer_get_depth(og_layer)
}