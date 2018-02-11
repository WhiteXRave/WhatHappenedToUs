/// @description Create the variables
onLadder = false
//Phy
image_speed = 0
spd = [0, 0]
max_spd = 4
grav = 1
accel = 1
fric = 0.3
jump_height = -10
global.cantshoot = false
jump = false
movement = false
cRUN = false
sndSteps = false
ladder = false


//Hp
max_hp = 10
hp = max_hp


//Take some stuff
ammo_taken = false

// Hide the solids layer
var solid_layer = layer_get_id("Solids")
layer_set_visible(solid_layer, debug_mode)

//States
movement = 0
dash = 1
state = movement