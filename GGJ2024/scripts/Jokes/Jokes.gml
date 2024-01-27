// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



global.Room1Jokes =[

new Joke( "What do you call a fish wearing a bowtie?",["Sofishticated","Fish Fingers","Fred"], 120),
new Joke( "What did the ocean say to the beach?", ["Nothing, it just waved.","Swoosh","Sand to meet you"], 120),


new Joke( "SpawnTrapdoor", [], 120),

new Joke( "I was startled by a pig in a shrub", ["It was an hambush", "bacon", "berries"], 120),


new Joke( "", [], -1),
];

global.Room2Jokes =[

new Joke("Why was the clown wearing suspenders ...,",["To keep his trousers up","His Sense of Style.","Fashion. Look it up.","N- I, uhm-"], 120),
new Joke( "A termite walks into a bar...",["He asks, 'is the bartender?'","He asks- bartender-","Why the long face?","Ouch!"], 120),

new Joke("What do you get if you cross a bear, a lion and a tiger?",["Really angry animals!","A letter from the government.","Childhood Trauma.","RIP Harambe."], 120),
new Joke( "SpawnTrapdoor", [], 120),

new Joke("A man walks into a bar...",["He says, 'Ouch!'","Do you like cheese?","What's this even doing here?","This isn't the answer."], 120),


new Joke( "", [], -1),
];

function add_jokes_to_book(jokes)
{
	for(var i = 0; i < array_length(jokes); ++i)
	{
		array_push(global.joke_book, { text: jokes[@i].jk, punchline: undefined });
	}
}

function record_joke(joke, punchline)
{
	for(var i = 0; i < array_length(global.joke_book); ++i)
	{
		if(global.joke_book[@i].text == joke)
		{
			global.joke_book[@i].punchline = punchline;
			break;
		}
	}
}

function save_jokes()
{
	var data = [];
	
	for(var i = 0; i < array_length(global.joke_book); ++i)
	{
		if(!is_undefined(global.joke_book[@i].punchline))
		{
			array_push(data, [ global.joke_book[@i].text, global.joke_book[@i].punchline ]);
		}
	}
	
	var buf = buffer_create(1, buffer_grow, 1);
	buffer_write(buf, buffer_text, json_stringify(data));
	buffer_save(buf, "jokebook.json");
	buffer_delete(buf);
}

function load_jokes()
{
	var buf = buffer_load("jokebook.json");
	if(buf == -1)
	{
		return;
	}
	
	var data = json_parse(buffer_read(buf, buffer_text));
	buffer_delete(buf);
	
	for(var i = 0; i < array_length(data); ++i)
	{
		record_joke(data[@i][@0], data[@i][@1]);
	}
}

global.joke_book = [];

add_jokes_to_book(global.Room1Jokes);
add_jokes_to_book(global.Room2Jokes);

load_jokes();
