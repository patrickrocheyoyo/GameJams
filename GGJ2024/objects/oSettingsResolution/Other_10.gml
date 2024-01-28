/// @description Handle button press

if(menu_select_selected == (array_length(menu_select_options) - 1))
{
	global.SettingsManager.set_resolution_idx(-1); /* Full screen */
}
else{
	global.SettingsManager.set_resolution_idx(menu_select_selected);
}
