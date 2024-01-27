/// @description Insert description here
// You can write your code in this editor

if(state != eState.Landed)
{
	health-=10;

	state = eState.Landed;
	sprite_index = sImpact;
	image_index = 0;
	landedcount = 0;

	if(health<0)
		CreateTransition(PostGameRoom);
}

// instance_destroy();
