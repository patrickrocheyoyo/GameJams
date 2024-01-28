/// @description Insert description here
// You can write your code in this editor

var old_dist_to_target = point_distance(x, y, xtarget, ytarget);

if(state!=eState.Landed)
{
	x+=xvel;
	y+=yvel;
}
else
	landedcount++;



var new_dist_to_target = point_distance(x, y, xtarget, ytarget);

if(new_dist_to_target >= old_dist_to_target)
{
	/* We crossed our target point, splat on the ground. */
	
	 if (state!=eState.Landed)
	 {
		x = xtarget;
		y = ytarget;
	
		xvel = 0;
		yvel = 0;
		state = eState.Landed;
		landedcount=0;
		sprite_index = sImpact;
		
		//audio_play_sound(Slime_explosion_with_build_up_1, 1, false, 1.0);
	 }

	
}
else
	image_angle = darctan2(-yvel,xvel);

frame++;


