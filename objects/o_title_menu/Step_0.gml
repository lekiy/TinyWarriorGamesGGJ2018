/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("X"))){
	alarm[0] = room_speed*0.75;
	audio_play_sound(a_menu_select, 5, false);
}

if(keyboard_check_pressed(vk_down)){
	selected_option++; 
	audio_play_sound(a_menu_tick, 3, false);
}else
if(keyboard_check_pressed(vk_up)){
	selected_option--; 
	audio_play_sound(a_menu_tick, 5, false);
 }

if(selected_option > 1){
	selected_option = 0;
}

if(selected_option < 0){
	selected_option = 1;
}

if(keyboard_check_pressed(vk_escape)){
	game_end();	
}

if(keyboard_check_pressed(vk_numpad5)){
	room_goto(rm_opening);
}

if(keyboard_check_pressed(vk_numpad6)){
	room_goto_next();
}