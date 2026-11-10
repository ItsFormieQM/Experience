self_x = 320
self_y = 201
i = 0
choices = [
	"Save",
	"Return"
]
check_values = function() {
	if i >= array_length(choices) {
		i = 0
	}
	if i <= -1 {
		i = array_length(choices) - 1
	}
	snd_play(snd_menu_move,1)
}
colour = c_white
file_saved = false
current_room = scr_get_custom_roomname(room)
ran = false
minutes = 0
seconds = 0
absolute_seconds = 0
savepoint_id = 0
values = scr_get_savefile_values()
visible = false
