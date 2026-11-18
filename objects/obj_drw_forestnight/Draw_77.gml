shader_set(shd_dreamworld_btint)
//surface_set_target(dsurf)
//draw_clear_alpha(c_black, 0)

var fborder = application_get_position()
//surface_reset_target()
draw_surface_stretched(application_surface,fborder[0],fborder[1],fborder[2]-fborder[0],fborder[3]-fborder[1])
shader_reset()




