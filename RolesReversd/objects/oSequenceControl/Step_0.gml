_timing = layer_sequence_get_headpos(_title);

if _timing > 110 
{
	layer_sequence_pause(_title)
}

if global._doneintro = true
{
	layer_sequence_headpos(_title, 110);
	layer_sequence_pause(_title);
}










































