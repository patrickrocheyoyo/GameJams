	// Activate all instances, to resume their functionalities
	instance_activate_all();

	// Destroy the pause menu Sequence, so the pause menu disappears
	layer_sequence_destroy(global.pause_sequence);

	// Set 'paused' to false, as the game is now unpaused
	oPauseMenu.paused = false;
































