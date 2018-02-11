/// @description Spawn enemies
if !instance_exists(obj_enemy) {	
		sprite_index = spr_spawner1
}
if (hp < 1) {
	instance_destroy(self)	
}
