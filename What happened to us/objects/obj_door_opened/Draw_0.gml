draw_self()
if (obj_player.x > x && mouse_x < obj_player.x) || (obj_player.x < x && mouse_x > obj_player.x) {
	if (instance_exists(obj_player)) {
		if (distance_to_object(obj_player) < 30) {
			if (!collision_line(x, y, obj_player.x, obj_player.y - 40, obj_solid, false ,false)) {
				if (image_index = 0) && (door_blocked = false) {
					draw_sprite(spr_door_outline, 1, x, y)	
				}
			}
		}
	}
}