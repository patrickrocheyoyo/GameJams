
if (!paused)
{
	// Deactivate all instances except the current instance.
	instance_deactivate_all(true);

	// Create the pause menu Sequence and store its ID in a variable so it can be destroyed later
	pause_sequence = layer_sequence_create("Instances", room_width/2, room_height/2, sqPauseMenu);

	// Set 'paused' to true
	paused = true;
}
// Otherwise, if the game is already paused,
else
{
	// Activate all instances, to resume their functionalities
	instance_activate_all();

	// Destroy the pause menu Sequence, so the pause menu disappears
	layer_sequence_destroy(sqPauseMenu);

	// Set 'paused' to false, as the game is now unpaused
	paused = false;
}





































