/// @description Insert description here
// You can write your code in this editor

draw_self();

if(instance_exists(burnable)){
	if(burn_dist <= burn_range) draw_set_color(c_red);
	else draw_set_color(c_green);
	
	draw_line(x, y, burnable.x, burnable.y);
	draw_set_color(c_white);
}
/*draw_set_color(c_red);
draw_set_alpha(.5);
draw_circle(x, y, 24, false);
draw_set_alpha(1);