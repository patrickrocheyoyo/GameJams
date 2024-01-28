/// @description Insert description here
// You can write your code in this editor


if(correct)
{
	record_joke(joke, punchline);
	save_jokes();
	
	global.JokeController.numjokescorrect++;

	var _reaction_sound = audio_play_sound(crowd_laughter_edited_2, 1, false, 1.0);
	audio_sound_gain(_reaction_sound, 0.0, 3000);
}
else
{
	var _reaction_sound = audio_play_sound(choose(angry_crowd_1, angry_crowd_2, angry_crowd_3), 1, false, 1.0);
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



















