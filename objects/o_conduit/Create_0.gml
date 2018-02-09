/// @description Insert description here
// You can write your code in this editor

enum energy_type {
	null,
	fire,
	lightning,
	ice,
	magntism
}

burnable = noone;
burn_dist = 99999;
burn_range = 24;
initialize_movement_variables();

current_type = energy_type.null;
held = false;

