function array_find_mode(array) {
    if array_length(array) <= 0 {
		return noone
	}
    var frequencies = {}
    var mode_value = array[0]
    var _max = 0

    for (var i = 0; i < array_length(array); i++) {
        var num = array[i]
        var key = string(num)
        if !variable_struct_exists(frequencies, key) {
            frequencies[$ key] = 0
        }
        frequencies[$ key] += 1

        if frequencies[$ key] > _max {
            _max = frequencies[$ key]
            mode_value = num
        }
    }

    if _max <= 1 {
        return noone
    }

    return mode_value
}

function array_struct_find_mode(array, struct_key) {
    if array_length(array) == 0 {
		return noone
	}

    var frequencies = {}
    var mode_value = noone
    var max_count = 0

    for (var i = 0; i < array_length(array); i++) {
        var struct = array[i]
        var value = struct[$ struct_key]
        var key = string(value)

        if !variable_struct_exists(frequencies, key) {
            frequencies[$ key] = 0
        }
        
        frequencies[$ key] += 1

        if frequencies[$ key] > max_count {
            max_count = frequencies[$ key]
            mode_value = value
        }
    }

    if max_count <= 1 {
        return noone
    }

    return mode_value
}
