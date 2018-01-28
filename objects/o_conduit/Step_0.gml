/// @description Insert description here
// You can write your code in this editor

handle_movement_vel();
handle_collisions_with_platforms();

switch(current_type){
	case energy_type.null: 
		sprite_index = s_conduit_null; 
		break;
	case energy_type.fire: 
		sprite_index = s_conduit_flame; 
		image_speed = 1; 
		break;
}

if(current_type == energy_type.fire){
	var burnable = instance_nearest(x, y, o_block_grass);
	if(instance_exists(burnable)){
		if(point_distance(x, y, burnable.x, burnable.y) <= sprite_get_width(msk_conduit)/2+4){
			burnable.burning = true;
			burnable.image_speed = 1;
		}
	}
	var explodable = instance_nearest(x, y, o_bomb);
	if(instance_exists(explodable)){
		if(point_distance(x, y, explodable.x, explodable.y) <= sprite_get_width(msk_conduit)/2+16){
			explodable.exploded = true;
		}
	}
}