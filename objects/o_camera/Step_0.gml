/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(target)){
	target = o_player;
}else{

if(abs((x+width/2)-target.x) > 1){
	x += round((target.x-(x+width/2))*smoothing);
}else{
	x = target.x-width/2;
}
if(abs((y+height/2)-target.y) > 1){
	y += round((target.y-(y+height/2))*smoothing);
}else{
	y = target.y-height/2;
}

}


x = clamp(x, 0, room_width-width);
y = clamp(y, 24, room_height-height);
camera_set_view_pos(camera, x, y-24);


//Parallax the background
layer_x("Background", floor(x * 0.15));
layer_y("Background", y-24);
