/// @description Insert description here
// You can write your code in this editor

switch(slide_counter){
	case 0:
		draw_set_color(c_black);
		draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
		draw_sprite(s_beam, image_index, 0, 80);
		break;
	case 1:
		draw_set_color(c_black);
		draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
		draw_sprite(s_beam, image_index, 0, 80);
		break;
	case 2:
		//draw_sprite(bg_dead_text_2, 0, 0, 80);
		break;
	case 4:
		draw_set_alpha(alpha[0]);
		draw_sprite(s_life_5, 0, 0, 120);
		draw_set_alpha(1);
		break;
	case 5:
		draw_set_alpha(alpha[0]);
		draw_sprite(s_life_5, 0, 0, 120);
		
		draw_set_color(c_black);
		draw_set_alpha(alpha[2]);
		draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
		draw_set_alpha(1);
		break;
	case 6:
		draw_set_alpha(alpha[0]);
		draw_sprite(s_life_5, 0, 0, 120);
		draw_set_color(c_black);
		draw_set_alpha(alpha[1]);
		show_debug_message(alpha[1]);
		draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
		draw_set_alpha(1);
		break;
	
}