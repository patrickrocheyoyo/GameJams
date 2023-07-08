/// @description Insert description here
// You can write your code in this editor


//controls
var left = keyboard_check_direct(vk_left) || keyboard_check_direct(ord("A"));
var right = keyboard_check_direct(vk_right) || keyboard_check_direct(ord("D"));
var jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);

isSliding = false;


//left right movement and collision
var horizontalInput = right - left;

if(horizontalInput != 0){
	movespd += horizontalInput * moveacc;
	movespd = clamp(movespd, -maxmovespd, maxmovespd);
}else{
	if(movespd > moveacc){
		movespd -= moveacc;
	}else if( movespd < -moveacc){
		movespd += moveacc;
	}else{
		movespd = 0;
	}
}

if(place_meeting(x+movespd,y, oCollideParent)){
	while(!place_meeting(x+sign(movespd),y,oCollideParent)){
		x+=sign(movespd);
	}				
	movespd = 0;
	isSliding = true;
}

x += movespd;

//up/down movement and collisions
onGround = place_meeting(x, y+yspd, oCollideParent);

if(!onGround){
	yspd += fallspd;	
	
	if(isSliding){
		if(yspd > 0){
			yspd = fallspd / 2;
		}
		jumps = 1;
	}
}
else{
	jumps = 2;
	yspd = 0;
}


if(jump){
	if(jumps > 0){
		yspd = jumppower;
		jumps -= 1;
	}
}