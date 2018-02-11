/// @description Allah
if !collision_line(x, y, x + lengthdir_x(speed, direction), y + lengthdir_y(speed,direction), obj_SolidPar, true, false) {
	speed = 15	
}
if !collision_line(x, y, x + lengthdir_x(speed, direction), y + lengthdir_y(speed,direction), obj_parent_enemy, true, false) {
	speed = 15	
}