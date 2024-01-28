/// @description Insert description here
// You can write your code in this editor

if(menu_item_active && (menu_select_selected + 1) < array_length(menu_select_options))
{
	++menu_select_selected;
	event_user(0);
}
