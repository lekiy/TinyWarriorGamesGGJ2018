/// @description Insert description here
// You can write your code in this editor
x+=0.2;

layer_x("Horizon", x);
layer_x("Bg1", x*0.9);
layer_x("Bg2", x*0.6);
layer_x("Bg3", x*0.3);
//layer_x("Bg4", x);

camera_set_view_pos(camera, x, y);

if(slide_counter > 2){
	alpha+= 1/(room_speed*3);	
}