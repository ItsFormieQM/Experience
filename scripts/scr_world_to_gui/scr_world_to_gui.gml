function scr_world_to_gui(_world_x, _world_y) {
    var _cam = view_camera[0]
    
    var _cam_x = camera_get_view_x(_cam)
    var _cam_y = camera_get_view_y(_cam)
    var _cam_w = camera_get_view_width(_cam)
    var _cam_h = camera_get_view_height(_cam)
    
    var _x_percent = (_world_x - _cam_x) / _cam_w
    var _y_percent = (_world_y - _cam_y) / _cam_h
    var _gui_x = _x_percent * display_get_gui_width()
    var _gui_y = _y_percent * display_get_gui_height()
    
    return [_gui_x, _gui_y]
}
