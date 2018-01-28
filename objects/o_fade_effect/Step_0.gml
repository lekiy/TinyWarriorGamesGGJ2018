/// @description Insert description here
// You can write your code in this editor
alpha += 0.03;

if(alpha >= 0.95) alpha = 1;

if(alarm_start = false && alpha >= 1){
	alarm[0] = room_speed*1;
	alarm_start = true;
}