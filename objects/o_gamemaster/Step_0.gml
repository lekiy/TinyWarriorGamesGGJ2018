/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space)){
	room_restart();	
}

if(global.player_dead && !instance_exists(o_death_text)){
	instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "Instances", o_death_text);
}