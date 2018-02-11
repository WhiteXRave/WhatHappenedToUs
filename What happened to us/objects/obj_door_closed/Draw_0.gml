draw_self()
if (obj_player.x > x && mouse_x < obj_player.x) || (obj_player.x < x && mouse_x > obj_player.x) {
	if (instance_exists(obj_player)) {
		if (distance_to_object(obj_player) < 50) {
			if (!collision_line(x, y, obj_player.x, obj_player.y - 40, obj_solid, false ,false)) {
				if (image_index = 0) {
					draw_sprite(spr_door_outline, 0, x, y)	
				}
			}
		}
	}
}