/// @description Room specific music

if (room == rMainMenu)
{
	audio_play_sound(aud_Menu_Music, 0, 1);
}else if (room == rIntro) {
	audio_play_sound(aud_Menu_Music, 0, 1);
}else if (room == rEndGame){

	audio_play_sound(aud_Game_Win_Music, 0, 1);
	if (!audio_is_playing(aud_Game_Win_Music))
	{
		audio_play_sound(aud_Menu_Music, 0, 1);
	} 
} else{
	audio_play_sound(aud_Game_Music, 0,1);
}

