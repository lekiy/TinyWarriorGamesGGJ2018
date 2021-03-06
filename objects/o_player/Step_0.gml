/// @description Insert description here
// You can write your code in this editor

dir_x  = keyboard_check(vk_right)-keyboard_check(vk_left);

if(keyboard_check_pressed(ord("Z")) && on_ground){
	vel_y -= jump_vel;
	audio_play_sound(a_jump, 7, false);
}

if(dir_x != 0){
	facing_dir = dir_x;
	is_moving = true;
}else{
	is_moving = false;
}
handle_movement_vel();
handle_collisions_with_platforms();

if(!item_held){
	if(keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_down)){
		if(place_meeting(x, y, o_carriable)){
			held_obj = instance_place(x, y, o_carriable)	;
			item_held = true;
			held_obj.held = true;
			audio_play_sound(a_lift_crystal, 4, false);
		}
	}
}else{
	if(instance_exists(held_obj)){
		if(keyboard_check_pressed(ord("X"))){
			is_throwing = true;
			audio_play_sound(a_throw, 7, false);
			image_index = 0;
			item_held = false;
			held_obj.held = false;
			held_obj.vel_x = (throw_vel+3)*facing_dir;
			held_obj.vel_y = -throw_vel;
			held_obj = noone;
		}
		if(keyboard_check_pressed(vk_down)){
			item_held = false;
			held_obj.held = false;
			held_obj = noone;
		}
	}
}

if(instance_exists(held_obj)){
	held_obj.x = x;
	held_obj.y = y-sprite_get_height(msk_player);
	held_obj.vel_x = 0;
	held_obj.vel_y = 0;
}

if(is_throwing){
	if(image_index >= image_number -1){
		is_throwing = false;
	}
}


if(!on_ground){
	fall_time++;	
}else if(on_ground && fall_time > room_speed * 0.25){
	fall_time = 0;
	var dust_fx = instance_create_layer(x, y+1, "Instances", o_dust_fx);
	dust_fx.depth -= 1;
}else{
	fall_time = 0;
}

//Handles running states
script_execute(state_scripts[current_state]);


