

if(place_meeting(x, y+1, o_solid)){
	on_ground = true;
}else{
	on_ground = false;	
}

var inst_x = instance_place(x+vel_x, y, o_solid){
	if(instance_exists(inst_x)){
		while(place_meeting(x+vel_x, y, inst_x)){
			switch(inst_x.object_index){
				case o_platform:
					if(y+7 > inst_x.y){
						break;
					}else{
						continue;	
					}
				case o_solid_slope:
				//while(place_meeting(x, y, o_solid_slope)){
					y--;
				//}
				break;
				default:
					while(!place_meeting(x+sign(vel_x), y, o_solid)){
						x+=sign(vel_x);	
					}
					x-=sign(vel_x);
					vel_x = 0;
					accel_x = 0;
					break;
			}
		}
	}
}
/*
if(place_meeting(x+vel_x, y, o_solid)){
	var inst = instance_place(x+vel_x, y, o_solid);
	if(y+7 > inst.y && place_meeting(x+vel_x, y, o_platform)){
	//Ignore Collision
	}else{
		if(place_meeting(x+sign(vel_x), y, o_solid_slope)){
			while(place_meeting(x, y, o_solid_slope)){
				y--;
				//x-= sign(vel_x);
			}
		}else{
			while(!place_meeting(x+sign(vel_x), y, o_solid)){
				x+=sign(vel_x);	
			}
			x-=sign(vel_x);
			vel_x = 0;
			accel_x = 0;
		}
	}
}
*/
x+=vel_x;


if(place_meeting(x, y+vel_y, o_solid)){
	var inst = instance_place(x, y+vel_y, o_solid);
	if(y+7 > inst.y && place_meeting(x, y+vel_y, o_platform)){
	//Ignore Collision
	}else{
		while(!place_meeting(x, y+sign(vel_y), o_solid)){
			y+=sign(vel_y);	
		}
		vel_y = 0;
		accel_y = 0;
	}
}

vel_y = min(vel_y, obj_term_vel);
y+=vel_y;