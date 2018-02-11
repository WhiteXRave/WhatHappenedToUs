draw_self()
draw_text(x - 35, y - 50, "EY: " + +string(y + 12))
if (instance_exists(obj_player)) {
	draw_text(x + 35, y - 20, "PE" + +string(obj_player.y))
}

