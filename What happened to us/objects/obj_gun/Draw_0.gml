/// @description Draw the player and gun
if instance_exists(obj_player) {

	if (mouse_x > x) {
	var Len = point_distance(x, y, x, y - 5)
	var Angle = point_direction(x, y, x, y - 5)
} else 
{
		var Len = point_distance(x, y, x, y + 4)
		var Angle = point_direction(x, y, x, y + 4)
}

direction = point_direction(x + lengthdir_x(Len, Angle + direction), y + lengthdir_y(Len, Angle + direction),  mouse_x , mouse_y)
image_angle = direction
var allo
if (mouse_x > x) {
	allo = 1
} else {
	allo = -1	
}

if (mouse_x = x) && (mouse_y = y) {
	direction = 180
}
if (point_distance(x, y, mouse_x, mouse_y) < 4.7) && (point_distance(x, y, mouse_x, mouse_y) != 0) {
	direction = point_direction(x, y,  mouse_x , mouse_y)	
}

var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])
// Draw the gun
draw_sprite_ext(sprgun, gunb, obj_player.x - allo, obj_player.y - 15, 1, allo, direction, image_blend, image_alpha)
draw_set_color(c_yellow)
draw_text(vx + 560, vy + 335, "Bullets: " + +string(global.bullets))
//draw_line_color(x + lengthdir_x(Len, Angle + direction), y + lengthdir_y(Len, Angle + direction),  mouse_x , mouse_y, c_red, c_white)
}
