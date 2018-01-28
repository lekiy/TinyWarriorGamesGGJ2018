/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter)){
	room_restart();	
}

if(global.player_dead && !instance_exists(o_death_text)){
	text = instance_create_layer(0, 0, "Instances", o_death_text);
	text.x = display_get_gui_width()/2-o_death_text.total_width/2;
	text.y = display_get_gui_height()/2;
}

if(keyboard_check_pressed(vk_escape)){
	room_goto(rm_title_menu);	
}

if(keyboard_check_pressed(vk_numpad4)){
	room_goto_previous();
}

if(keyboard_check_pressed(vk_numpad6)){
	room_goto_next();
}

alpha -= 0.05;