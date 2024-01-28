/// @description Insert description here
// You can write your code in this editor



if(image_index ==1 && !has_used)
{
	show_debug_message("Go on to next level");

	has_used = true;
	var _applause_sound = audio_play_sound(sfx_crowd_applause_v1, 1, false, 1.0);
	audio_sound_gain(_applause_sound, 0.0, 3000);
	
	if(room == GameRoom1)
		CreateTransition(GameRoom2);
	else
		CreateTransition(PostGameRoom);
	
}






















