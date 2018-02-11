if (obj_player.x > x && mouse_x < obj_player.x) || (obj_player.x < x && mouse_x > obj_player.x) {
	if (distance_to_object(obj_player) < 80) {
		if (!collision_line(x, y, obj_player.x, obj_player.y - 40, obj_solid, false ,false)) {
			if (door_blocked = false) {
				audio_play_sound(snd_close_door, 5, false)
				instance_change(obj_door_closed, false)
			}
		}
	}
}
