var reference_pointer = noone
if array_length(global.warp_list) <= 0 {
	with obj_warp_marker {
		array_push(global.warp_list,{slot: slot, ref_pointer: id})
	}
}
show_debug_message(global.warp_list)
for (var i = 0; i < array_length(global.warp_list); i++) {
	if global.warp_list[i].slot == slot {
		reference_pointer = global.warp_list[i].ref_pointer
	}
}
var target_center_x = (reference_pointer.bbox_left + reference_pointer.bbox_right) / 2
var target_center_y = (reference_pointer.bbox_top + reference_pointer.bbox_bottom) / 2
obj_mainchara.x = target_center_x
obj_mainchara.y = target_center_y
instance_destroy()