/// @description Insert description here
// You can write your code in this editor

var completed = 0;

for(var i = 0; i < array_length(global.joke_book); ++i)
{
	if(!is_undefined(global.joke_book[@i].punchline))
	{
		++completed;
	}
}

var text = "Joke book completion: " + string(completed) + " / " + string(array_length(global.joke_book)) + "\n\n";

for(var i = 0; i < array_length(global.joke_book); ++i)
{
	if(!is_undefined(global.joke_book[@i].punchline))
	{
		text += global.joke_book[@i].text + "\n" + global.joke_book[@i].punchline + "\n\n";
	}
}

draw_text(x, y, text);
