/// @description initialize game variables.

camera = instance_create_layer(x, y, "Instances", o_camera);
show_debug_message("Entering Room: "+room_get_name(room));