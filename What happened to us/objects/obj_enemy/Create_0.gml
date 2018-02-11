/// @description Initialize the enemy
image_speed = 0
speed = 4
path = path_add()
hp = 4
target_xx = xstart
target_yy = ystart
random_wayx = 1
random_wayy = 1
allohahuy = false


// Bullet cooldown
bullet_cooldown = game_get_speed(gamespeed_fps)
alarm[0] = random(bullet_cooldown)

// States
movement = 0

state = movement