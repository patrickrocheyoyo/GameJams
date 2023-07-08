/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y+yspd, oCollideParent)){
		while(!place_meeting(x,y+1,oCollideParent)){
			y+=1;
		}				
	}
	else{
		y += yspd;
	}
