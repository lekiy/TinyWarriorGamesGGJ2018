accel_x = dir_x*move_speed;
vel_x += accel_x;
vel_x *= obj_friction

if(!on_ground){
	vel_y += obj_gravity;
	obj_friction = friction_air;
}else{
	obj_friction = friction_ground;	
}