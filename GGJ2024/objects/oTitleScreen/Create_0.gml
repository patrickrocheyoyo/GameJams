if(variable_global_exists("music_menu"))
{
	if (audio_is_playing(global.music_menu))
	{
		audio_stop_sound(global.music_menu);
	}
}

global.music_menu = audio_play_sound(snd_menuthemeattempt, 10, true);
audio_sound_gain(global.music_menu, 0, 0);
audio_sound_gain(global.music_menu, 0.9, 2000);
