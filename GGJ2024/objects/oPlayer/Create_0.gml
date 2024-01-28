/// @description Insert description here
// You can write your code in this editor

image_angle_multiplier = 0.2;

fimage_angle = 0;
deltax = 0;
deltay = 0;

image_xscale = 0.5;
image_yscale = 0.5;


velx = 0;
vely = 0;


oldx = 0;
oldy = 0;

last_mouse_down = false;
last_mouse_x = -1;
last_mouse_y = -1;

slip_frames = 0;

health=100;
is_dead = false;

global.Player = id;

footstep_sfx = -1;

if(variable_global_exists("music_menu"))
{
	if (audio_is_playing(global.music_menu))
	{
		audio_stop_sound(global.music_menu);
	}
}

if(variable_global_exists("music_level"))
{
	if (!audio_is_playing(global.music_level))
	{
		global.music_level = audio_play_sound(snd_level_music_edited, 10, true);
		audio_sound_gain(global.music_level, 0, 0);
		audio_sound_gain(global.music_level, 0.7, 1000);
	}
}
else
{
	global.music_level = audio_play_sound(snd_level_music_edited, 10, true);
	audio_sound_gain(global.music_level, 0, 0);
	audio_sound_gain(global.music_level, 0.7, 1000);
}





















