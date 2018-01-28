

if(place_meeting(x, y+1, o_solid)){
	on_ground = true;
}else{
	on_ground = false;	
}

if(place_meeting(x+vel_x, y, o_solid)){
	if(place_meeting(x+sign(vel_x), y, o_solid_slope)){
		while(place_meeting(x, y, o_solid_slope)){
			y--;
		}
	}else{
		while(!place_meeting(x+sign(vel_x), y, o_solid)){
			x+=sign(vel_x);	
		}
		vel_x = 0;
		accel_x = 0;
	}
}

x+=vel_x;

if(place_meeting(x, y+vel_y, o_solid)){
	while(!place_meeting(x, y+sign(vel_y), o_solid)){
		y+=sign(vel_y);	
	}
	vel_y = 0;
	accel_y = 0;
}

vel_y = min(vel_y, obj_term_vel);
y+=vel_y;