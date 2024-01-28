/// @description Insert description here
// You can write your code in this editor


if(correct)
{
	record_joke(joke, punchline);
	save_jokes();
	
	global.JokeController.numjokescorrect++;

	var _reaction_sound = audio_play_sound(crowd_laughingwav_14578, 1, false, 0.7);
	audio_sound_gain(_reaction_sound, 0.0, 3000);
}
else
{
	var _reaction_sound = audio_play_sound(angry_mob_loop_6847, 1, false, 0.7);
	audio_sound_gain(_reaction_sound, 0.0, 3000);
}


with(oJokeHandler)
{
	instance_destroy(self);
}


with(oPunchline)
{
	instance_destroy(self);
}



















