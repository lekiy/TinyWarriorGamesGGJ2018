/// @description Insert description here
// You can write your code in this editor


var padding = 4;

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

draw_text(x, y, "Press");
var text_width = string_width("Press");
draw_sprite(s_tut_icons, 1, x+padding+text_width, y-6);
var spr_width = sprite_get_width(s_tut_icons);
draw_text(x+padding*2+text_width+spr_width, y, "To Restart");

