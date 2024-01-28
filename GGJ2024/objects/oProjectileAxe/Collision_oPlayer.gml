/// @description Insert description here
// You can write your code in this editor

if(state != eState.Landed)
{
	var _endProj = instance_create_depth(x, y, depth, oProjectileEnd);
	_endProj.sprite_index = end_sprite_anim;
}

event_inherited();


