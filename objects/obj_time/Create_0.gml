global.deltatime = game_get_speed(gamespeed_fps) / 60
show_debug_message($"Deltatime: {global.deltatime}")
timer = 0
global.is_fs = false
scr_init()
room_goto(room_gaster)
