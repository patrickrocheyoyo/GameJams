/// @description Insert description here
// You can write your code in this editor

onGround = place_meeting(x+xspd, y+yspd, oCollideParent);


if(!onGround){
	yspd += fallspd;	
}
else{
	jumps = 2;
	yspd = 0;
}
