if (inst_5A4142CA.door_was_opened) {
	inst_20A448F7.image_alpha -= 0.02	
}
if (inst_20A448F7.image_alpha < 0.01) {
	instance_destroy(inst_20A448F7)	
}
/*if (collided) {
	inst_48BE954C.image_alpha -= 0.02
}
if (inst_48BE954C.image_alpha < 0.01) {
	instance_destroy(inst_48BE954C)	
}