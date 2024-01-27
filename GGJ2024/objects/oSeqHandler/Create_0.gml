set_sequence = -1;

owner = noone;

has_death = false;
stored_function = function(){}
stored_parms = [];

set_death = function(_new_function, _new_parms = [])
{
	has_death = true;
	stored_function = _new_function;
	stored_parms = _new_parms;
}

create_seq = function(_new_seq, _new_layer)
{
	set_sequence = layer_sequence_create(_new_layer, x, y, _new_seq);
}
