/// @description Insert description here
// You can write your code in this editor


var mpcell = 64;
mpgrid = mp_grid_create(0,0,room_width/mpcell,room_height/mpcell, mpcell,mpcell);

mp_grid_add_instances(mpgrid, oCollideParents, false);



debugDraw=false;

if(timeToStartChase != 0){
	alarm[0] = timeToStartChase;
}

