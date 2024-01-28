/// @description Insert description here
// You can write your code in this editor

var first_item = get_first_item();
var active_item = get_active_menu_item();

if(id == active_item)
{
	var prev_item = get_prev_item();
	
	if(!is_undefined(prev_item))
	{
		prev_item.menu_item_activate();
	}
}
else if(is_undefined(active_item) && first_item == id)
{
	menu_item_activate();
}
