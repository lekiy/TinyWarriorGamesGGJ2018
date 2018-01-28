/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(global.score_font);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(display_get_gui_width()-4, 4, string(global.coin_count));

draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);