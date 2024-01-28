/// @description Insert description here
// You can write your code in this editor

if(slipped)
{
//	sprite_index = sBananaSplit;
	//draw_set_color(c_yellow);
	//draw_line_width(smear_x1, smear_y1, smear_x2, smear_y2, 10);
		var _endProj = instance_create_depth(x, y, depth, oProjectileEnd);
	_endProj.sprite_index = sBananaSplit;
}
else{
	event_inherited();
}
