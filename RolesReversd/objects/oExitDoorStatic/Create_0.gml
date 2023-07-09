/// @description Insert description here
// You can write your code in this editor



mpgrid = mp_grid_create(0,0,room_width/16,room_height/16, 16,16);

mp_grid_add_instances(mpgrid, oCollideParents, false);



debugDraw=false;

if(timeToStartChase != 0){
	alarm[0] = timeToStartChase;
}

