///@desc Sets an actor's direction sprites to the supplied.
///@param {Id.Instance} actor_handle The actor to refer to.
///@param {Asset.GMSprite} up_sprite The sprite to set when going up.
///@param {Asset.GMSprite} down_sprite The sprite to set when going down.
///@param {Asset.GMSprite} left_sprite The sprite to set when going left.
///@param {Asset.GMSprite} right_sprite The sprite to set when going right.
function cutscene_actor_set_direction_sprites(actor_handle,up=noone,down=noone,left=noone,right=noone){
	with actor_handle {
		cutscene_set_direction_spr(up,down,left,right)
	}
}
///@desc Resets the actor's direction sprites to the actor's default ones.
function cutscene_actor_reset_direction_sprites() {
	with actor_handle {
		cutscene_reset_direction_spr()
	}
}