event_inherited()
ftile = layer_get_id("Floor")
ftilemap = layer_tilemap_get_id(ftile)
depth = layer_get_depth("Lowerer")
dsurf  = surface_create(128,128)
application_surface_draw_enable(false)
darksurf = -1
instance_create(0,0,obj_lighter)