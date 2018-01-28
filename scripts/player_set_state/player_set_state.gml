///Handles how each state is picked for the player

if(on_ground){
	if(is_moving){
		if(!item_held){
			current_state = player_state.run;	
		}else{
			current_state = player_state.carry_run;
		}	
	}else if(!is_moving){
		if(!item_held){
			current_state = player_state.idle;	
		}else{
			current_state = player_state.carry_idle;	
		}
	}
}else if(!on_ground){
	if(!item_held){
		current_state = player_state.jump;
	}else{
		current_state = player_state.carry_jump;
	}
}

if(is_throwing){

	current_state = player_state.throw;
}
