if (sprite_index = spr_spawner1) && !instance_exists(obj_enemy) {
	repeat (wave) {
		var xxx = random_range(-50, 50) + obj_spawner.x
		var yyy = irandom_range(-50, 50) + obj_spawner.y
		instance_create_layer(xxx, yyy, "Gun", obj_enemy)
	}
	wave += 1
	sprite_index = spr_spawner
}


