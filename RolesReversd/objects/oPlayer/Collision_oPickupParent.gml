/// @description Insert description here
// You can write your code in this editor


switch (other.pickup){
	
	case "key":
		if(stomping){
			other.attach(self);
			hasKey = true;
			//Play pickup SFX
			audio_play_sound(snd_Pickup, 0, 0);
		}
	break;
	case "jumpboost":
		jumps = 2;
		instance_destroy(other);
	break;
	
	default:
		show_debug_message("Unknown pickup");
}
	
