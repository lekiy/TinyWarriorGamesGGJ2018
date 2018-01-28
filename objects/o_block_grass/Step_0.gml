/// @description Insert description here
// You can write your code in this editor
if(image_index >= image_number-1){
	instance_destroy();
}

if(image_index > 5 && burning){
	nearby[0] = instance_place(x, y-1, o_block_grass);
	nearby[1] = instance_place(x, y+1, o_block_grass);
	nearby[2] = instance_place(x-1, y, o_block_grass);
	nearby[3] = instance_place(x+1, y, o_block_grass);
	
	for(var i = 0; i < 4; i++){
		if(instance_exists(nearby[i])){
			nearby[i].burning = true;
			nearby[i].image_speed = 1;
		}
	}
	
}

if(burning && !ignited){
	ignited = true;
	audio_play_sound(a_block_burn, 4, false);
}