/// @description Insert description here
// You can write your code in this editor


if(other.state != eState.Landed)
{
	health-=10;

	other.state = eState.Landed;
	other.sprite_index = sImpact;
	other.image_index = 0;
	other.landedcount = 0;
	//instance_destroy(other);

	if(health<0)
		room_goto(PostGameRoom);
}




















