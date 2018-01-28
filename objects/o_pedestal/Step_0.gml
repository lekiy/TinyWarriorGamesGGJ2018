
if(is_filled){
	sprite_index = s_pedestal_collide_fx;
	
	if(image_index > image_number-1){
		sprite_index = s_pedestal_filled;	
	}
	instance_destroy(crystal);
}
