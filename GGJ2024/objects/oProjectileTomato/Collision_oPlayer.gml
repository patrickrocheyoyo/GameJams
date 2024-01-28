/// @description Insert description here
// You can write your code in this editor

if(state != eState.Landed)
{
	instance_create_depth(0, 0, -100, oTomatoSplat);
	
	var _endProj = instance_create_depth(x, y, depth, oProjectileEnd);
	_endProj.sprite_index = end_sprite_anim;
}

event_inherited();


