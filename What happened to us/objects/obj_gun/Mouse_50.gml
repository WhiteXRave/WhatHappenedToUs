/// @description Create a bullet
if instance_exists(obj_player) {

if (alarm[0] <= 0 && global.bullets > 0 && global.cantshoot = false) {	
	gunb = 1
	if (mouse_x > x) {
		var Len = point_distance(x, y, x + 17, y - 4.7)
		var Angle = point_direction(x, y, x + 17, y - 4.7)
	} else {		
			var Len = point_distance(x, y, x + 17, y + 3.6)
			var Angle = point_direction(x, y, x + 17, y + 3.6)
		}
			if (mouse_x > x) {
	var Len1 = point_distance(x, y, x, y - 4.7)
	var Angle1 = point_direction(x, y, x, y - 4.7)
} else 
{
		var Len1 = point_distance(x, y, x, y + 3.6)
		var Angle1 = point_direction(x, y, x, y + 3.6)
}
	var gavnoizjeppi = point_direction(x + lengthdir_x(Len1, Angle1 + direction), y + lengthdir_y(Len1, Angle1 + direction),  x + lengthdir_x(Len, Angle + direction)  ,y + lengthdir_y(Len, Angle + direction))
	var bullet = instance_create_layer(x + lengthdir_x(Len, Angle + direction), y + lengthdir_y(Len, Angle + direction), "Bullets" ,obj_bullet)
	global.bullets -= 1
	bullet.direction = gavnoizjeppi
	bullet.image_angle = bullet.direction
	alarm[0] = bullet_cooldown
} else {
	gunb = 0	
}
}