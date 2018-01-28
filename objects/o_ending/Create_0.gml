/// @description Insert description here
// You can write your code in this editor
camera = view_camera[0];
pan_start = false;
image_index = 0;
slide_counter = 0;
alpha[0] = 1;
alpha[1] = 0;
alpha[2] = 0;
credits_y = 0;
audio_stop_sound(a_level_music);
audio_play_sound(a_laser_cutscene, 6, false);
audio_play_sound(a_end_music, 6, true);

display_set_gui_size(480, 360);