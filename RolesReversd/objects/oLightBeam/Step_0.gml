/// @description Insert description here
// You can write your code in this editor

if(!capturedPlayer){
	path_delete(mppath);
	mppath = path_add();


	var i =0;
	var foundPath = false;
	while(!foundPath){
	
		foundPath = mp_grid_path(oExitDoorStatic.mpgrid, mppath, x,y, oPlayer.x,oPlayer.y-i, true);
		i++;
		if(i > 400){
			break;
		}
	}
	
	if(foundPath == false){
		mp_potential_step_object(oPlayer.x,oPlayer.y, 6, oCollideParents);	
	}

	if(path_exists(mppath)){
		path_start(mppath,6, path_action_stop, true);
	}
}