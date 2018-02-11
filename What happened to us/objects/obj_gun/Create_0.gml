global.maxbullets = 30
global.bullets = global.maxbullets
gunb = 0
sprgun = spr_gun_fa
//Bullet cooldown
bullet_cooldown = room_speed/6
alarm[0] = bullet_cooldown
cursor_sprite = spr_crosshair
window_set_cursor(cr_none)
image_speed = 0
