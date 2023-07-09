/// @description Insert description here
// You can write your code in this editor



if(stomping){
	if(other.image_index==0 && hasKey){
		other.image_index = 2;
		other.unlock();
		hasKey = false;
		instance_destroy(oKey);
	}
	if(other.image_index ==1){
		other.image_index = 2;
		other.unlock();
	}
}
	