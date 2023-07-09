/// @description Insert description here
// You can write your code in this editor

stompSprite = spr_player_butt_stomp;
idleSprite = spr_player_idle;
dashSprite = spr_player_dash;
fallSprite = spr_player_fall;
runSprite = spr_player_run;
jumpSprite = spr_player_jump;


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

sprite_index = idleSprite;
image_speed = 0;
image_index = 0;
image_xscale = -1;

slideCancelTimer = -1;

captured = false;

//Play SFX for 'summoning' player.
audio_play_sound(snd_Player_Summon, 0, 0);

function cancelSlide(){
	isSliding=false;
	canSlide =false;
}


function cancelDash(){
	dashing = false;
}

