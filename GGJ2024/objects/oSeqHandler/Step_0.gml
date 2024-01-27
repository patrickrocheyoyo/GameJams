// Tracks to owner
if (owner != noone)
{
	if (instance_exists(owner))
	{
		x = owner.x;
		y = owner.y;
	}
}

if (set_sequence != -1)
{	
	layer_sequence_x(set_sequence, x);
	layer_sequence_y(set_sequence, y);
	
	if (layer_sequence_is_finished(set_sequence))
	{
		layer_sequence_destroy(set_sequence);
		
		if (has_death)
		{
			stored_function(stored_parms);	
		}
		
		instance_destroy();
	}
}