/// @description initialize game variables.

#macro TILE_SIZE 16

camera = instance_create_layer(x, y, "Instances", o_camera);
camera.snap = true;
show_debug_message("Entering Room: "+room_get_name(room));

global.player_dead = false;
global.coin_count = 0;

global.score_font = font_add_sprite_ext(s_numbers, "1234567890", true, 2);

display_set_gui_size(240, 180);

alpha = 1;
audio_stop_sound(a_level_music);
audio_stop_sound(a_title_music);
if(room != rm_lvl_7){
		audio_play_sound(a_level_music, 6, true);
}