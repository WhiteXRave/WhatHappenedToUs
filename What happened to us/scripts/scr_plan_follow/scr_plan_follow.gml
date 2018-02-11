///plan(target_x, target_y)
if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) <= 200) || allohahuy = true {
			target_xx = obj_target.x
			target_yy = obj_target.y
			sprite_index = spr_enemy_alert
		}
			if (distance_to_object(obj_player) <= 100) {
				target_xx = obj_player.x + random_wayx
				target_yy = obj_player.y + random_wayy
				sprite_index = spr_enemy_alert
			}
				if ((collision_line(obj_player.x, obj_player.y, target_xx, target_yy, obj_solid, false, false)) && (distance_to_object(obj_player) <= 100)) {
					random_wayx = irandom_range(-80,-40)
					random_wayy = irandom_range(40,-40)
				} else if (alarm[1] <= 0) {
					alarm[1] = room_speed
				}
					if (distance_to_object(obj_player) > 200) && allohahuy = false {
						target_xx = xstart
						target_yy = ystart
						sprite_index = spr_enemy_idle
					}
						if (distance_to_object(obj_player) <= 100) && (!collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false)) {
							scr_enemy_fire_bullet()	
						}
target_x = argument0
target_y = argument1
mp_grid_path(global.grid, path, x, y, target_x, target_y , true) 
path_start(path, 2, 0, true)
}
