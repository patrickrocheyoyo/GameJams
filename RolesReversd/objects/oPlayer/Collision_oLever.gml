/// @description Insert description here
// You can write your code in this editor



if(stomping){
	if(other.image_index==0 && hasKey){ //Unlock lever
		other.image_index = 2;
		other.unlock();
		hasKey = false;
		instance_destroy(oKey);
		
		//Play unlock SFX
		audio_play_sound(snd_Unlock_Switch, 0, 0);
	}
	if(other.image_index ==1){ //Open lever
		other.image_index = 2;
		other.unlock();
		
		//Play open door SFX
		audio_play_sound(snd_Open_Door, 0, 0);
	}
}
	