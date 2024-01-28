/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

menu_select_options = [];
menu_select_selected = 0;

left_arrow_x = -1;
left_arrow_y = -1;

right_arrow_x = -1;
right_arrow_y = -1;

arrow_width = -1;
arrow_height = -1;

prev_mouse_x = -1;
prev_mouse_y = -1;

function mouse_over_left_arrow()
{
	return point_in_rectangle(mouse_x, mouse_y, left_arrow_x, left_arrow_y, (left_arrow_x + arrow_width), (left_arrow_y + arrow_height));
}

function mouse_over_right_arrow()
{
	return point_in_rectangle(mouse_x, mouse_y, right_arrow_x, right_arrow_y, (right_arrow_x + arrow_width), (right_arrow_y + arrow_height));
}
