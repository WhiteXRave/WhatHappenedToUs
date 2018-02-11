if (instance_exists(obj_player)) {
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])
x = vx + 10
y = vy + 330
draw_self()
if (obj_player.hp = 10) {
	image_index = 0	
}
if (obj_player.hp = 9) {
	image_index = 1	
}
if (obj_player.hp = 8) {
	image_index = 2	
}
if (obj_player.hp = 7) {
	image_index = 3	
}
if (obj_player.hp = 6) {
	image_index = 4	
}
if (obj_player.hp = 5) {
	image_index = 5	
}
if (obj_player.hp = 4) {
	image_index = 6	
}
if (obj_player.hp = 3) {
	image_index = 7	
}
if (obj_player.hp = 2) {
	image_index = 8	
}
if (obj_player.hp = 1) {
	image_index = 9	
}
if (obj_player.hp < 1) {
	image_index = 10	
}
}
