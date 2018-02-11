/// @description Move towards the player
event_user(state)
// Death
if (hp <= 0) {
	instance_destroy()
}
if (hp = 4) {
	image_index = 0		
}
if (hp = 3) {
	image_index = 1		
}
if (hp = 2) {
	image_index = 2		
}
if (hp = 1) {
	image_index = 3		
}


