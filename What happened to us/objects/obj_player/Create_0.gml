/// @description Create the variables
//Phy
image_speed = 0
spd = [0, 0]
max_spd = 0.1
grav = 1
accel = 1
fric = 0.3
global.cantshoot = false
movement = false
sndSteps = false
ladder = false
uLadder = false
uuLadder = false
gavnishe = false
closest_ladder = false
inBuilding = false
upperthanzombie = false
fLadder = false


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
state = movement