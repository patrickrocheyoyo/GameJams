/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

menu_select_options = [
	"0%", "10%", "20%", "30%", "40%", "50%", "60%", "70%", "80%", "90%", "100%",
];

menu_select_selected = floor(global.SettingsManager.get_master_volume() * 10);
