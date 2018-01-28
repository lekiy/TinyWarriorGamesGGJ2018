/// @description Insert description here
// You can write your code in this editor
if(pan_start){
	x+=0.2;
}

layer_x("Horizon", x);
layer_x("Bg1", x*0.9);
layer_x("Bg2", x*0.6);
layer_x("Bg3", x*0.3);
//layer_x("Bg4", x);

camera_set_view_pos(camera, x, y);

if(slide_counter > 2){
	alpha+= 1/(room_speed*3);	
}

if(slide_counter == 0){
	if(image_index >= image_number-1){
		slide_counter++;
		alarm[0] = room_speed*1;
		image_speed = 0;
	}
}else if(slide_counter == 2){
		pan_start = true;
}