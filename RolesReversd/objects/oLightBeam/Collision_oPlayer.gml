/// @description Insert description here
// You can write your code in this editor

capturedPlayer = true;

path_delete(mppath);
mppath = path_add();

mp_grid_path(oExitDoorStatic.mpgrid, mppath, x,y, oExitDoorStatic.x,oExitDoorStatic.y, false);

path_start(mppath,8, path_action_reverse, true);

other.captured = true;
