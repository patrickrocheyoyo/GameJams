function CreateTransition(_target_room)
{
	var _layer_name = "CurtainCall";
	var _layer_depth = -1000;
	
	var _out_function = function(_parms)
	{
		var _ln = _parms[0];
		var _ld = _parms[1];
		var _tr = _parms[2];

		var _new_temp_handle = function(_ln, _ld)
		{
			if (!layer_exists(_ln))
			{
				layer_create(_ld, _ln);
			}
			
			var _curtain_in_sound = audio_play_sound(curtain_open, 1.0, false, 0.1);
			var _new_in = instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), _ln, oSeqHandler);
			_new_in.create_seq(seq_stage_transition_out, _ln);
			
			with(oCameraTracker)
			{
				var _inst = self;
				_new_in.owner = _inst;
			}
		}
		
		var _new_ts = time_source_create(time_source_game, 1, time_source_units_frames, _new_temp_handle, [_ln, _ld]);
		time_source_start(_new_ts);
		
		room_goto(_tr);
		
		
	}
	
	if (!layer_exists(_layer_name))
	{
		layer_create(_layer_depth, _layer_name);
	}
	
	if(instance_exists(oSeqHandler))
		return;
	
	object_set_persistent(oSeqHandler, true);
	var _curtain_out_sound = audio_play_sound(curtain_close, 1.0, false, 0.1);
	var _new_out = instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), _layer_name, oSeqHandler);
	_new_out.create_seq(seq_stage_transition_in, _layer_name);
	
	if (!instance_exists(oCameraTracker))
	{
		instance_create_layer(0, 0, "Instances", oCameraTracker);
	}
	
	with(oCameraTracker)
	{
		var _inst = self;
		_new_out.owner = _inst;
	}
	
	_new_out.set_death(_out_function, [_layer_name, _layer_depth, _target_room]);
	object_set_persistent(oSeqHandler, false);
}