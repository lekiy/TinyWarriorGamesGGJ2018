/// @description Insert description here
// You can write your code in this editor

if(!held){
	handle_movement_vel();
	handle_collisions_with_platforms();
}

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
	burnable = instance_nearest(x, y, o_block_grass);
	if(instance_exists(burnable)){
		burn_dist = (point_distance(x, y, burnable.x+burnable.sprite_width/2, burnable.y+burnable.sprite_height/2));
		if(burn_dist  <= burn_range){
			burnable.burning = true;
			burnable.image_speed = 1;
		}
	}
	var explodable = instance_nearest(x, y, o_bomb);
	if(instance_exists(explodable)){
		if(point_distance(x, y, explodable.x+explodable.sprite_width/2, explodable.y+explodable.sprite_height/2) <= burn_range){
			explodable.exploded = true;
		}
	}
}