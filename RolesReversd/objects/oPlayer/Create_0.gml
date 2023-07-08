/// @description Insert description here
// You can write your code in this editor




yspd = 0;

maxMoveSpd = 6;
moveAcc = 1;
moveSpd = 0;

dashing = false;
stomping = false;

fallSpd = 1;
jumpPower = -15;

jumps = 2;

onGround = false;
isSliding = false;
canSlide = true;

hasKey = false;

image_speed = 0;
image_index = 0;

slideCancelTimer = -1;

function cancelSlide(){
	isSliding=false;
	canSlide =false;
}


function cancelDash(){
	dashing = false;
}

