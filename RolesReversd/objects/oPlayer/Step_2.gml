/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y+yspd, oCollideParents)){
	while(!place_meeting(x,y+yspd,oCollideParents)){
		y+=yspd;
	}				
}
else{
	y += yspd;
}

x += moveSpd;