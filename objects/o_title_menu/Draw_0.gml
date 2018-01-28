/// @description Insert description here
// You can write your code in this editor

var offset_y = 12;

draw_set_color(c_white);
/*draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(8+sprite_get_width(selector_sprite)+4, room_height-offset_y, "Exit");
offset_y += string_height("Exit")/2+4;
draw_text(8+sprite_get_width(selector_sprite)+4, room_height-offset_y, "Start");
*/

draw_sprite(s_menu_text, 2, 8+sprite_get_width(selector_sprite)+4, room_height-offset_y);
offset_y += sprite_get_height(s_menu_text)/2+4;
draw_sprite(s_menu_text, 0, 8+sprite_get_width(selector_sprite)+4, room_height-offset_y);

draw_sprite(selector_sprite, 0, 8, room_height-12 - ((offset_y-12)*selected_option));

draw_self();