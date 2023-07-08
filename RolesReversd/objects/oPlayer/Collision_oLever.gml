/// @description Insert description here
// You can write your code in this editor



if(stomping && hasKey){
	if(other.image_index==0){
		other.image_index = 1;
		other.unlock();
		hasKey = false;
		instance_destroy(oKey);
	}
}
	