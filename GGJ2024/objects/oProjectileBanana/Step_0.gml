/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



if(state!=eState.Landed)
	image_angle +=spin;

if(landedcount>90 || slipped)
	instance_destroy(self);