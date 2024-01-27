/// @description Insert description here
// You can write your code in this editor

var old_dist_to_target = point_distance(x, y, xtarget, ytarget);

x+=xvel;
y+=yvel;

var new_dist_to_target = point_distance(x, y, xtarget, ytarget);

if(new_dist_to_target >= old_dist_to_target)
{
	/* We crossed our target point, splat on the ground. */
	
	x = xtarget;
	y = ytarget;
	
	xvel = 0;
	yvel = 0;
}

frame++;

if(frame>256)
	instance_destroy(id);
