/// @description Insert description here
// You can write your code in this editor

DRAW_BASE_X = 390 * image_xscale;
DRAW_BASE_Y = 340 * image_yscale;
MAX_PER_PAGE = 3;

jokes = [];

for(var i = 0; i < array_length(global.joke_book); ++i)
{
	if(!is_undefined(global.joke_book[@i].punchline))
	{
		array_push(jokes, global.joke_book[@i]);
	}
}

current_page = 0;
num_pages = ceil(array_length(jokes) / MAX_PER_PAGE);
