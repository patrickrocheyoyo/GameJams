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

prev_mouse_x = -1;
prev_mouse_y = -1;

function mouse_over_left_arrow()
{
	return point_in_rectangle(mouse_x, mouse_y, left_arrow_x, left_arrow_y, (left_arrow_x + sprite_get_width(sArrowLeft)), (left_arrow_y + sprite_get_height(sArrowLeft)));
}

function mouse_over_right_arrow()
{
	return point_in_rectangle(mouse_x, mouse_y, right_arrow_x, right_arrow_y, (right_arrow_x + sprite_get_width(sArrowRight)), (right_arrow_y + sprite_get_height(sArrowRight)));
}
