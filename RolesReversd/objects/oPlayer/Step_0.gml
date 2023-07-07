/// @description Insert description here
// You can write your code in this editor

var left = keyboard_check_direct(vk_left) || keyboard_check_direct(ord("A"));
var right = keyboard_check_direct(vk_right) || keyboard_check_direct(ord("D"));
var jump = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);



if(left){
	x -= movespd;
}

if(right){
	x += movespd;
}

if(jump){
	if(jumps > 0){
		yspd = jumppower;
		jumps -= 1;
	}
}