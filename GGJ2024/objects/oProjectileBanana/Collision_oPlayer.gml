/// @description Insert description here
// You can write your code in this editor

if(!slipped)
{
	slipped = true;
	other.slip_frames = 15;
	
	/* TODO: Clamp velocity */
	other.velx = clamp((other.velx * 10), -15, 15);
	other.vely = clamp((other.vely * 10), -15, 15);
	
	smear_x1 = x;
	smear_y1 = y;
	
	smear_x2 = x + (other.velx * 4.0);
	smear_y2 = y + (other.vely * 4.0);
}
