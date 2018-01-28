/// @description Insert description here
// You can write your code in this editor


if(slide_counter < 2){
		draw_set_alpha(alpha[0]);
		draw_set_color(c_black);
		draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
		draw_set_alpha(1);
		draw_sprite(s_beam, image_index, 0, 80);
}if(slide_counter > 4){
		draw_set_alpha(alpha[1]);
		draw_sprite(s_life_5, 0, 0, 120);
		draw_set_alpha(1);
}if(slide_counter > 5){
		draw_sprite(s_credits, 0, 0, 480-credits_y);
}if(slide_counter > 8){
		draw_set_alpha(alpha[2]);
		draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
		draw_set_alpha(1);
}/*/if(slide_counter > 14){
		draw_set_font(global.score_font);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_text(display_get_gui_width(), display_get_gui_height(), string(global.coin_count));
}