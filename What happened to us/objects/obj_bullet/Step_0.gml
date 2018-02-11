/// @description
scr_warp()
if collision_line(x, y , x + lengthdir_x(speed, direction), y + lengthdir_y(speed,direction), obj_SolidPar, true, false) {
	if distance_to_object(obj_SolidPar) < 15 {
		speed = distance_to_object(obj_SolidPar)	
	} 
}
if collision_line(x, y , x + lengthdir_x(speed, direction), y + lengthdir_y(speed,direction), obj_parent_enemy, true, false) {
	if distance_to_object(obj_parent_enemy) < 15 {
		speed = distance_to_object(obj_parent_enemy)	
	} 
}
if (speed < 1) {
	speed = 1	
}

