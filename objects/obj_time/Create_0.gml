global.deltatime = 1
show_debug_message($"Deltatime: {global.deltatime}")
timer = 0
global.is_fs = false
scr_init()
room_goto(room_gaster)
texture_prefetch("Default")
scr_load_preferences()
show_debug_message(global.is_fs ? "True" : "False")
window_center()

window_set_position(window_get_x(), window_get_y() - 20)
depth = -666