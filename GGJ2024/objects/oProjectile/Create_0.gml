/// @description Insert description here
// You can write your code in this editor

enum eState {
	Flying,
	Landed
}

xvel = 0;
yvel = 0;

state = eState.Flying;

frame = 0;
landedcount=0;

image_xscale = 0.2;
image_yscale = 0.2;

spin =0;

var _throw_sound = audio_play_sound(projectile_throw_edited, 1, false, 0.1, 0, random_range(0.8, 1.2));


















