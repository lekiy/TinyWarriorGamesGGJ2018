/// @description initialize game variables.

camera = instance_create_layer(x, y, "Instances", o_camera);
camera.snap = true;
show_debug_message("Entering Room: "+room_get_name(room));

global.player_dead = false;
global.coin_count = 0;

display_set_gui_size(240, 180);

alpha = 1;