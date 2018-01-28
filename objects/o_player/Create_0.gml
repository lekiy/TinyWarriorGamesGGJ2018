/// @description Insert description here
// You can write your code in this editor
initialize_movement_variables();

enum player_state {
	idle,
	run,
	jump,
	carry_idle,
	carry_run,
	carry_jump,
	throw,
	death
}

fall_time = 0;

current_state = player_state.idle;
//player_state_carry_idle();
state_scripts[0] = player_state_idle;
state_scripts[1] = player_state_run;
state_scripts[2] = player_state_jump;
state_scripts[3] = player_state_carry_idle;
state_scripts[4] = player_state_carry_run;
state_scripts[5] = player_state_carry_jump;
state_scripts[6] = player_state_throw;

image_speed = 0;

friction_air = 0.7;

move_speed = 1.4;
jump_vel = 7;

is_moving = false;
item_held = false;
held_obj = noone;

on_ground = false;

throw_vel = 4.5;
is_throwing = false;