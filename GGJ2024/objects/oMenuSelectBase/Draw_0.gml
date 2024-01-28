/// @description Insert description here
// You can write your code in this editor

var ARROW_SCALE = 1.0;
var ARROW_YOFF = -8;

draw_set_color(c_white);

var label_w = string_width(label);
draw_text(((x - label_w) - 30), y, label);

var text = menu_select_options[@menu_select_selected];
var text_w = string_width(text);

left_arrow_x = x;
left_arrow_y = y + ARROW_YOFF;

right_arrow_x =  x + 250;
right_arrow_y = y + ARROW_YOFF;

arrow_width = sprite_get_width(sArrowOn) * ARROW_SCALE;
arrow_height = sprite_get_height(sArrowOn) * ARROW_SCALE;

var arrow_sprite = menu_item_active
	? sArrowOn
	: sArrowOff;

draw_text(x + 64, y, text);

draw_line((left_arrow_x + arrow_width - 1), left_arrow_y, right_arrow_x, right_arrow_y);
draw_line((left_arrow_x + arrow_width - 1), (left_arrow_y + arrow_height - 1), right_arrow_x, (right_arrow_y + arrow_height - 1));

draw_sprite_ext(arrow_sprite, 0, left_arrow_x + arrow_width, left_arrow_y, -ARROW_SCALE, ARROW_SCALE, 0, c_white, 1.0);
draw_sprite_ext(arrow_sprite, 0, right_arrow_x, right_arrow_y, ARROW_SCALE, ARROW_SCALE, 0, c_white, 1.0);
