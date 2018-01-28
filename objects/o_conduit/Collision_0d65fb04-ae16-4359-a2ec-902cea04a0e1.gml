/// @description Insert description here
// You can write your code in this editor
if(other.current_type != current_type){
	current_type = other.current_type;
	if(current_type = energy_type.null){
		audio_play_sound(a_crystal_unpowered, 7, false);
		
	}else{
		audio_play_sound(a_crystal_powered, 7, false);
	}
}