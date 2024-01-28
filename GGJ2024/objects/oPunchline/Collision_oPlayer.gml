/// @description Insert description here
// You can write your code in this editor


if(correct)
{
	record_joke(joke, punchline);
	save_jokes();
	
	global.JokeController.numjokescorrect++;
}
else
{
	//do bad stuff
}


with(oJokeHandler)
{
	instance_destroy(self);
}


with(oPunchline)
{
	instance_destroy(self);
}



















