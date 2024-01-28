if(variable_global_exists("music"))
{
	if (audio_is_playing(global.music))
	{
		audio_stop_sound(global.music);
	}
}

global.music = audio_play_sound(snd_menuthemeattempt, 10, true);
audio_sound_gain(global.music, 0, 0);
audio_sound_gain(global.music, 0.9, 2000);
