/// @description Insert description here
// You can write your code in this editor


var width = string_width(punchline);
var height = string_height(punchline);

image_xscale = width/sprite_get_width(sprite_index);
image_yscale = height/sprite_get_height(sprite_index);

draw_self();
draw_text(x,y,punchline);





















