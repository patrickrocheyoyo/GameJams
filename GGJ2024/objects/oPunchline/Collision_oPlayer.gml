/// @description Insert description here
// You can write your code in this editor


if(correct)
{
	record_joke(joke, punchline);
	save_jokes();
	
	global.JokeController.numjokescorrect++;
	global.numjokescorrect++;
	global.current_streak++;
	global.longest_streak = max(global.longest_streak, global.current_streak);

	var _reaction_sound = audio_play_sound(crowd_laughter_edited_2, 1, false, 1.0);
	audio_sound_gain(_reaction_sound, 0.0, 3000);
	
	global.Player.audience_happiness +=20;
	
	if(global.Player.audience_happiness>100)
		global.Player.audience_happiness=100;
	
	
	with(oCrowd)
	{
		alarm[1]+=90;
	}
	
	with(oCrowdBack)
	{
		alarm[1]+=90;
	}
	
}
else
{
	global.numjokesfailed++;
	global.current_streak = 0;
	
	var _reaction_sound = audio_play_sound(choose(angry_crowd_1, angry_crowd_2, angry_crowd_3), 1, false, 1.0);
	audio_sound_gain(_reaction_sound, 0.0, 3000);
	//do bad stuff
	global.Player.audience_happiness -=20;
	
	if(global.Player.audience_happiness<0)
	{
		global.Player.audience_happiness=0;
	}
	
}


with(oJokeHandler)
{
	instance_destroy(self);
}


with(oPunchline)
{
	instance_destroy(self);
}





















