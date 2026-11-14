burst += 0.5;
draw_sprite_ext(spr_heartoutline2, 0, xstart+3, ystart+9, 0.25 + burst, 0.25 + (burst / 2), 0, c_white, 0.8 - (burst / 6))
draw_sprite_ext(spr_heartoutline1, 0, xstart+3, ystart+9, 0.25 + (burst / 1.5), 0.25 + (burst / 3), 0, c_white, 1 - (burst / 6))
draw_sprite_ext(spr_heartoutline1, 0, xstart+3, ystart+9, 0.2 + (burst / 2.5), 0.2 + (burst / 5), 0, c_white, 1.2 - (burst / 6))
if !i_exists(obj_soul_battle) {
	instance_create(xstart+3,ystart+9,obj_soul_battle)
}
if (burst > 10)
    instance_destroy()