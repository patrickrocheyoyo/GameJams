/// @description Insert description here
// You can write your code in this editor

var dx = global.Player.x-x;
var dy = global.Player.y-y;


var len = dx*dx+dy*dy;

if(len>0)
{
	len = sqrt(len);
	
	var inst = instance_create_layer(x,y,"Instances",oProjectile);

	inst.xvel =10* dx/len;
	inst.yvel =10* dy/len;

	
}



alarm[1] = irandom(1024);





















