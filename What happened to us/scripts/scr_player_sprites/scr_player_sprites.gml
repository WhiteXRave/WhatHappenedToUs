var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var vinput = keyboard_check(ord("W")) - keyboard_check(ord("S"))
var bRUN = (keyboard_check(vk_shift))

if (hinput = 0) && ((place_meeting(x, y + 1, obj_solid))) {
	image_speed = 0.3
	sprite_index = spr_player_idle
}
if (hinput = 0) && (!ladder) && (uuLadder) {
	image_speed = 0.3
	sprite_index = spr_player_idle	
}
if (hinput != 0) && (max_spd = 2) && (!ladder) {
	image_speed = 0.9
	sprite_index = spr_player_walk
}
if (hinput != 0) && (max_spd = 6) {
	image_speed = 0.6
	sprite_index = spr_player_run
}
if (vinput = 0) && (ladder) {
	image_speed = 0.3
	sprite_index = spr_player_idle 
}
if (vinput != 0) && (ladder) {
	image_speed = 0.6
	sprite_index = spr_player_walk
}
if (vinput != 0) && (!ladder) && (hinput = 0) {
	image_speed = 0.3
	sprite_index = spr_player_idle
}