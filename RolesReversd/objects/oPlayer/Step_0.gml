/// @description Insert description here
// You can write your code in this editor


//controls
var left = keyboard_check_direct(vk_left) || keyboard_check_direct(ord("A"));
var right = keyboard_check_direct(vk_right) || keyboard_check_direct(ord("D"));
var jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);
var dash = keyboard_check_pressed(vk_shift);
var stomp = keyboard_check_pressed(vk_control);

isSliding = false;

if(captured){
	x = oLightBeam.x;
	y = oLightBeam.y;
	
	//Play dying sfx when captured by the light beam
	var _winSound = choose (snd_Player_Lose_1, snd_Player_Lose_2);
	audio_play_sound(_winSound, 0, 0);
	
	exit;
	
}
//left right movement and collision
var horizontalInput = right - left;

if(!dashing && !stomping){
	if(horizontalInput != 0){
		moveSpd += horizontalInput * moveAcc;
		moveSpd = clamp(moveSpd, -maxMoveSpd, maxMoveSpd);
		sprite_index = runSprite;
		image_xscale = -horizontalInput;
		image_speed = 1;
	}else{
		if(moveSpd > moveAcc){
			moveSpd -= moveAcc/3;
		}else if( moveSpd < -moveAcc){
			moveSpd += moveAcc/3;
		}else{
			moveSpd = 0;
			sprite_index = idleSprite;
			image_speed = 0;
		}
		
	}
}
	

if(place_meeting(x+moveSpd,y, oCollideParents)){
	while(!place_meeting(x+sign(moveSpd),y,oCollideParents)){
		x+=sign(moveSpd);
	}		
	if(instance_place(x+moveSpd, y, oWall) && canSlide){
		isSliding = true;
		image_index = spr_player_wall_slide;
		if(slideCancelTimer == -1){
			slideCancelTimer = call_later(1, time_source_units_seconds, cancelSlide);
		}
		
	}
	moveSpd = 0;
	
}


//up/down movement and collisions
onGround = place_meeting(x, y+yspd, oCollideParents);

if(!onGround){
	yspd += fallSpd;	
	
	
	if(isSliding){
		if(yspd > 0){
			yspd = fallSpd / 2;
		}
		jumps = 1;
	}
	
	if(stomping){
		sprite_index = stompSprite
		image_speed = 1;
		yspd += fallSpd *2;		
	}
}
else{ //if player is on the ground
	jumps = 2;
	yspd = 0;
	
	stomping = false;
	
	canSlide = true;
	if(slideCancelTimer != -1){
		call_cancel(slideCancelTimer);
		slideCancelTimer = -1;
	}
	
}
      

if(jump){
	if(jumps > 0){
		//Play jump SFX
		var _jumpSound = choose (snd_Player_Jump_1, snd_Player_Jump_2);
		audio_play_sound(_jumpSound, 0, 0);
		
		yspd = jumpPower;
		jumps -= 1;
		
	}
}

if(dash && !dashing){
	yspd =0;
	moveSpd *= 2;
	dashing = true;
	//play dash sfx
	audio_play_sound(snd_Player_Dash, 0, 0);
	var dashCancel = call_later(0.5, time_source_units_seconds, cancelDash);
}
		
if(stomp && !stomping && !onGround){
	moveSpd = 0;
	yspd =0;
	stomping = true;
	
}

