/// @description Insert description here
// You can write your code in this editor
if(other.current_type != current_type){
	current_type = other.current_type;
	if(current_type = energy_type.null){
		audio_play_sound(a_crystal_unpowered, 7, false);
		
	}else{
		audio_play_sound(a_crystal_powered, 7, false);
	}
	
	var change_fx = instance_create_layer(x, y, "Instances", o_crystal_change_fx);
	switch(other.current_type){
		case energy_type.null:
			change_fx.sprite_index = s_crystal_change_fire_fx;
			break;
		case energy_type.fire:
			change_fx.sprite_index = s_crystal_change_fire_fx;
			break;
	}
}