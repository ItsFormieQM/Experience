functions = []

pop_loopfunc = function(name) {
	for (var i = 0; i < len(functions); i++) {
		if functions[i].name == name {
			array_delete(functions,i,1)
		}
	}
}