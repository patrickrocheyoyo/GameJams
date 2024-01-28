/// @description Insert description here
// You can write your code in this editor


draw_set_font(menuFont);

inputblock = 60;

if(variable_global_exists("music_level"))
{
	if (audio_is_playing(global.music_level))
	{
		audio_stop_sound(global.music_level);
	}
}

global.music_menu = audio_play_sound(snd_menuthemeattempt, 10, true);
audio_sound_gain(global.music_menu, 0, 0);
audio_sound_gain(global.music_menu, 0.9, 2000);
























