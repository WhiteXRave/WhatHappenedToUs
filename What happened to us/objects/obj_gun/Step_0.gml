if (instance_exists(obj_player)) {
x = obj_player.x
y = obj_player.y - 15


//.....Bullets.....
if (global.bullets < 31) && (global.bullets > 15) {
	
	sprgun = spr_gun_fa	
}
if (global.bullets < 16) && (global.bullets > 0) {
	sprgun = spr_gun_ha	
}
if (global.bullets < 1) {
	sprgun = spr_gun_ea	
}

if (!mouse_check_button(mb_left)) {
	gunb = 0	
}
}
