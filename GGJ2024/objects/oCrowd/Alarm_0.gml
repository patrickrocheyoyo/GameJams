/// @description Insert description here
// You can write your code in this editor



var dx = room_width/2-x;
var dy = room_height/2-y;


var len = dx*dx+dy*dy;

if(len>0)
{
	len = sqrt(len);
	
	x+=5*dx/len;
	y+=5*dy/len;
	
}



alarm[0] = 30+irandom(30);















