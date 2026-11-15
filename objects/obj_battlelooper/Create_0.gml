functions = []
if instance_number(object_index) >= 2 {
	instance_destroy()
}
pop_loopfunc = function(name) {
	for (var i = 0; i < len(functions); i++) {
		if functions[i].name == name {
			array_delete(functions,i,1)
			sdm("GONE")
		}
	}
	sdm(functions)
}