/// @description Insert description here
// You can write your code in this editor


draw_set_font(gameFont);



draw_set_color(c_white);

var width = string_width(punchline)+12;
var height = string_height(punchline)+12;

image_xscale = width/sprite_get_width(sprite_index);
image_yscale = height/sprite_get_height(sprite_index);

draw_self();
draw_text(x,y,punchline);



















