/// @description Spawn enemies
if !instance_exists(obj_enemy_meele) {	
	repeat (wave) {
		instance_create_layer(x + 10, y - 15, "Gun", obj_enemy_meele)
	}
}

