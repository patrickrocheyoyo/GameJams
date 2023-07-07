/// @description Insert description here
// You can write your code in this editor

var left = keyboard_check_direct(vk_left) || keyboard_check_direct(ord("A"));
var right = keyboard_check_direct(vk_right) || keyboard_check_direct(ord("D"));
var jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);



if(left){
	if(place_meeting(x-movespd,y, oWall)){
		while(!place_meeting(x-1,y,oWall)){
			x-=1;
		}				
	}
	else{
		x -= movespd;
	}
}

if(right){
	if(place_meeting(x+movespd,y, oWall)){
		while(!place_meeting(x+1,y,oWall)){
			x+=1;
		}				
	}
	else{
		x += movespd;
	}
}

if(jump){
	if(jumps > 0){
		yspd = jumppower;
		jumps -= 1;
	}
}