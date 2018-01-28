/// @description Insert description here
// You can write your code in this editor
global.coin_count++;
audio_play_sound(a_coin, 4, false);
instance_create_layer(x, y, "Instances", o_coin_get_fx);
instance_destroy();