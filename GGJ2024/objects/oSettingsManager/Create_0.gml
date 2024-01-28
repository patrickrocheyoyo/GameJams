/// @description Insert description here
// You can write your code in this editor

var dw = display_get_width();
var dh = display_get_height();

available_resolutions = [
	[ 960, 540 ],
];

/* We default to full-screen, unless the display is larger than 1920x1080, in
 * which case we default to a 1920x1080 window.
*/
selected_resolution_idx = -1;

if(dw > 1280 && dh > 720)  { array_push(available_resolutions, [ 1280, 720  ]); }
if(dw > 1920 && dh > 1080) { array_push(available_resolutions, [ 1920, 1080 ]); selected_resolution_idx = 2; }
if(dw > 3840 && dh > 2160) { array_push(available_resolutions, [ 3840, 2160 ]); }

master_volume = 1.0;

function set_resolution_idx(idx)
{
	selected_resolution_idx = idx;
	
	var dw = display_get_width();
	var dh = display_get_height();
	
	if(idx < 0)
	{
		window_set_showborder(false);
		window_set_rectangle(0, 0, dw, dh);
	}
	else{
		var ww = available_resolutions[@idx][@0];
		var wh = available_resolutions[@idx][@1];
		
		var wx = (dw / 2) - (ww / 2);
		var wy = (dh / 2) - (wh / 2);
		
		window_set_showborder(true);
		window_set_rectangle(wx, wy, ww, wh);
	}
}

function get_resolution_idx()
{
	return selected_resolution_idx;
}

function set_master_volume(gain)
{
	master_volume = gain;
	audio_master_gain(gain);
}

function get_master_volume(gain)
{
	return master_volume;
}

set_resolution_idx(selected_resolution_idx);
set_master_volume(master_volume);

global.SettingsManager = id;
