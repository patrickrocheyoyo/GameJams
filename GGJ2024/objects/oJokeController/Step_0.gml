/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(oJokeHandler))
	frame++;

if(frame==jokes[curjoke].time)
{

	var jk= instance_create_layer(0,0,"Instances_1",oJokeHandler);
	jk.joke = jokes[curjoke].jk;
	
	
	for(var i=0;i<array_length(jokes[curjoke].punchlines);i++)
	{
		
		var _x = global.Player.x + 2*(irandom(512)-256);
		var _y = global.Player.y +2*(irandom(384)-188);
		
		var pl = instance_create_layer(_x,_y,"Instances_1",oPunchline);
		pl.punchline = jokes[curjoke].punchlines[i];
		pl.correct = i==0?1:0;
		
	}
	frame = 0;
	curjoke++;
}























