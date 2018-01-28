/// @description Insert description here
// You can write your code in this editor
if(pan_start){
	x+=0.3;
	if(x+100 >= room_width/2){
		pan_start = false;
	}
}

layer_x("Horizon", x);
layer_x("Bg1", x*0.9);
layer_x("Bg2", x*0.6);
layer_x("Bg3", x*0.3);
//layer_x("Bg4", x);

camera_set_view_pos(camera, x, y);

if(slide_counter > 1){
	alpha[0] -= 1/(room_speed*3);
}
if(slide_counter > 4){
	alpha[1]+= 1/(room_speed*3);	
}
if(slide_counter > 5){
	credits_y+=0.5;	
}
if(slide_counter > 14){
	alpha[2]+= 1/(room_speed*3);	
}

alpha[0] = min(alpha[0], 1);
alpha[1] = min(alpha[1], 1);
alpha[2] = min(alpha[2], 1);


if(slide_counter == 0){
	if(image_index >= image_number-1){
		slide_counter++;
		alarm[0] = room_speed*1;
		image_speed = 0;
	}
}else if(slide_counter == 2){
		pan_start = true;
}

if(slide_counter > 6 && keyboard_check_pressed(ord("X"))){
	room_goto(rm_title_menu);
}