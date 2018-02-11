var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var vinput = keyboard_check(ord("W")) - keyboard_check(ord("S"))
var bRUN = (keyboard_check(vk_shift))

if ((hinput = 0) && jump = false) {
	image_speed = 0.3
	sprite_index = spr_player_idle
}
if ((hinput != 0) && jump = false) && (max_spd = 4) {
	image_speed = 0.6
	sprite_index = spr_player_walk
}
if ((vinput != 0) && (!bRUN)) && (ladder) && (!place_meeting(x, y + 85, obj_floor)) {
	image_speed = 0.6
	sprite_index = spr_player_walk
}
if ((hinput != 0) && jump = false) && (max_spd = 6) {
	image_speed = 0.6
	sprite_index = spr_player_run
}