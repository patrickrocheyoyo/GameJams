/// @description Insert description here
// You can write your code in this editor

mppath = path_add();

mp_grid_path(oExitDoorStatic.mpgrid, mppath, x,y, oPlayer.x,oPlayer.y, false);

path_start(mppath,2, path_action_reverse, true);

capturedPlayer = false;

