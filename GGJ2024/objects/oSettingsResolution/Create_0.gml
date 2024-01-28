/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

for(var i = 0; i < array_length(global.SettingsManager.available_resolutions); ++i)
{
	var res = global.SettingsManager.available_resolutions[@i];
	array_push(menu_select_options, string(res[@0]) + " x " + string(res[@1]) + " (windowed)");
}

array_push(menu_select_options, "Full screen");

menu_select_selected = global.SettingsManager.get_resolution_idx();
if(menu_select_selected == -1)
{
	menu_select_selected = array_length(menu_select_options) - 1;
}
