/// @description Insert description here
// You can write your code in this editor


if(correct)
{
	record_joke(joke, punchline);
	save_jokes();
	
	global.JokeController.numjokescorrect++;
	
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





















