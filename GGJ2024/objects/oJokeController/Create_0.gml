/// @description Insert description here
// You can write your code in this editor


frame = 0;

numjokescorrect = 0;
global.current_streak = 0;

global.JokeController = id;
numjokesneeded=10;

switch(room)
{
	case GameRoom1:
		global.AllJokes = array_shuffle(global.AllJokes);
		global.JokeIndex = 0;
		jokes = global.AllJokes;
		numjokesneeded=4;
		break;
		default:
	case GameRoom3:
		jokes = global.AllJokes;
		break;
}



























