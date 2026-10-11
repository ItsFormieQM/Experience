function cmd_warp(_room, slot){
	_room = asset_get_index(_room)
	if !room_exists(_room) {
		return -1
	}
	slot = floor(slot)
	instance_create(obj_mainchara.x,obj_mainchara.y,obj_warp, {target_marker_slot: slot, target_room: _room, is_onload: true})
}