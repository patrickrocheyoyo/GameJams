/// @description Room specific music

if (room == rMainMenu)
{
	audio_play_sound(aud_Menu_Music, 0, 1);
} 
//var roomName = rm_level1, rm_level2, rm_level3, rm_AliceLevel, rm_scottlevel1;

if (room == rIntro)
{
	audio_play_sound(aud_Menu_Music, 0, 1);
} 

if (room == rEndGame)
{
	audio_play_sound(aud_Game_Win_Music, 0, 1);
	if (!audio_is_playing(aud_Win_Music))
	{
		audio_play_sound(aud_Menu_Music, 0, 1);
	} 
} 

