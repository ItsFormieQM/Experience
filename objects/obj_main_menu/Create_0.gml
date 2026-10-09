index = 0
choicer = 0
max_save_files = 5
choices = [
	"Continue",
	"Copy",
	"Erase",
]
erase_file = function(file) {
	if file_exists(file) {
		file_delete(file)
	}
	values = get_values()
	save_files = save_files_list()
}
loaded = false
save_files_list = function() {
	var save_files_found = []
	var file = noone
	for (var i = 1; i <= max_save_files; i++) {
		global.save_folder = game_save_id + $"save{i}/"
		file = file_find_first(global.save_folder + "savedata.txt", fa_none)
		if file == "" {
			array_push(save_files_found,{location: noone})
			file_find_next()
		}
		else {
			array_push(save_files_found,{location: global.save_folder + "savedata.txt"})
			file_find_next()
		}
	}
	file_find_close()
	return save_files_found
}
get_values = function() {
	var values = []
	var save_files = save_files_list()
	for (var i = 0; i < array_length(save_files); i++) {
		var temp_value = scr_get_savefile_values(save_files[i].location)
		array_push(values,temp_value)
	}
	return values
}
alpha = 1
values = get_values()
save_files = save_files_list()
show_debug_message(save_files_list())
show_debug_message(get_values())