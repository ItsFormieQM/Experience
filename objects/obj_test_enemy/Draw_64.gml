draw_text(0,120,$"ENEMY X POS: {x} Y POS: {y}")
draw_text(0,150,$"IS ATTACKED: {attacked ? "True" : "False"}")
draw_text(0,240,$"{stats.name} HP: {stats.hp}")
if instance_exists(obj_battlecontroller) {
	draw_text(0,270,$"BATTLE PLOT {obj_battlecontroller.battle_plot}")
}