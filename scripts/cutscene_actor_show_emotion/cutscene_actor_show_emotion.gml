///@desc Sets the specified actor's real playable object alternate to the specified direction. This is different than 'cutscene_actor_set_direction' because it changes the direction of the actual playable object rather than the actor's.
///@param {Id.Instance} actor_handle The instance ID for the specific actor.
///@param {real} emotion Use the enum Actor_Emotion to set the emotion! The emotion to display.
///@param {real} delay The amount of time before destroying the emotion.
function cutscene_actor_show_emotion(actor_handle,emotion,_delay) {
	var emote = noone
	switch emotion {
		case Actor_Emotion.ExclamationMark:
			emote = instance_create(0,0,obj_actoremotion_exclamation,{actor: actor_handle, delay: _delay})
			break
		default:
			break
	}
}