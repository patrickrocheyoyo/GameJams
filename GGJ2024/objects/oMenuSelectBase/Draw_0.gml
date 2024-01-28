/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

var label_w = string_width(label);
draw_text((x - label_w), y, label);

var text = menu_select_options[@menu_select_selected];
var text_w = string_width(text);

left_arrow_x = x;
left_arrow_y = y;

right_arrow_x =  x + 250;
right_arrow_y = y;

if(menu_item_active)
{
	draw_set_color(c_yellow);
	
	draw_sprite(sArrowLeft, 0, left_arrow_x, left_arrow_y);
	draw_text(x + 64, y, text);
	draw_sprite(sArrowRight, 0, right_arrow_x, right_arrow_y);
}
else{
	draw_set_color(c_yellow);
	
	draw_sprite_ext(sArrowLeft, 0, left_arrow_x, left_arrow_y, 1.0, 1.0, 0, c_white, 0.5);
	draw_text(x + 64, y, text);
	draw_sprite_ext(sArrowRight, 0, right_arrow_x, right_arrow_y, 1.0, 1.0, 0, c_white, 0.5);
}
