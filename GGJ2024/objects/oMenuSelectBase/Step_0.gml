/// @description Insert description here
// You can write your code in this editor

if(mouse_over_left_arrow() || mouse_over_right_arrow())
{
	menu_item_activate();
	
	if(mouse_check_button_pressed(mb_left))
	{
		if(mouse_over_left_arrow())
		{
			if(menu_select_selected > 0)
			{
				--menu_select_selected;
				event_user(0);
			}
		}
		else{
			if((menu_select_selected + 1) < array_length(menu_select_options))
			{
				++menu_select_selected;
				event_user(0);
			}
		}
	}
}
else if(menu_item_active && (mouse_x != last_mouse_x || mouse_y != last_mouse_y))
{
	// menu_item_deactivate();
}

last_mouse_x = mouse_x;
last_mouse_y = mouse_y;
