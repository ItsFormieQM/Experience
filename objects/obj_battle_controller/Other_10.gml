attacked = false
var hp_draw = 30
selected_inst.stats.hp -= hp_draw
selected_inst.damage_took = hp_draw
show_debug_message($"{selected_inst.stats.name} lost {hp_draw}HP!")
show_debug_message($"{selected_inst.stats.name} is at {selected_inst.stats.hp}HP!")
selected_inst.attacked = true
snd_play(snd_enemy_damage,2)