self_x = 320
self_y = 201
i = 0
choices = [
	"Save",
	"Return"
]
if instance_number(object_index) >= 2 {
	instance_destroy()
	exit
}
if image_xscale < 20 {
	image_xscale = 23.45
}
if image_yscale < 10 {
	image_yscale = 10.25
}
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
saved = false
beginsave = function() {
	saveman = instance_create(0,0,obj_savemanager)
}
successsave = function() {
	file_saved = true
	colour = c_yellow
	scr_save(savepoint_id)
	ran = false
	snd_play(snd_saved,1.35)
	snd_play(snd_menu_move,1)
	saved = true
}