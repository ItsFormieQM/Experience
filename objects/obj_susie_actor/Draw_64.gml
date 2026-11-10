var sett = draw_get_settings()
draw_set_font(fnt_main)
draw_set_colour(c_black)
draw_text(0,200,$"SUSIE ACTOR: {x},{y}")
draw_text(0,224,$"SUSIE SPRITE: {sprite_get_name(sprite_index)}")
if i_exists(obj_pink_actor) {
	draw_text(0,248,$"KRIS ACTOR: {cutscene_actor_get_instance(Actors.Pink).x},{cutscene_actor_get_instance(Actors.Pink).y}")
	draw_text(0,248+24,$"KRIS SPRITE: {sprite_get_name(obj_mainchara_actor.sprite_index)}")
}
draw_set_settings(sett)