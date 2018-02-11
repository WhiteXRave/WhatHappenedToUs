// Create a bullet
if alarm[0] <= 0 && !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, false) {
	var dir = point_direction(x, y, obj_player.x, obj_player.y-obj_player.sprite_height/2)
	var x_offset = lengthdir_x(16, dir)
	var y_offset = lengthdir_y(16, dir)
	var bullet = instance_create_layer(x+x_offset, y+y_offset, "Bullets", obj_enemy_bullet)
	bullet.direction = dir
	bullet.image_angle = dir
	alarm[0] = bullet_cooldown
}