
	if global.flag[Flag.On_Battle] {
		var _layer = "Lower"
		if layer_exists(_layer)
			depth = layer_get_depth(_layer)
	}
	else {
		if layer_exists(og_layer)
			depth = layer_get_depth(og_layer)
	}