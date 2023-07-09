/// @description Footstep SFX

// This event runs when a Broadcast Message is received.
// We're expecting the "footstep" message set in spr_player_run, which tells when the player has put a foot down.
// This reads the received message from the event_data map, where it's stored in the "message" key.
// The returned value is stored in a local variable.
var _message = event_data[? "message"];

// This checks if the message is "footstep", meaning the player has put a foot down. In that case we will create a dust effect.
if (_message == "footstep")
{	
	// Play that sound
	audio_play_sound(snd_Player_Step, 0, 0);
}



