/// @description Insert description here
// You can write your code in this editor

draw_set_font(gameFont); 

draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var width = string_width(joke)+12;
var height = string_height(joke)+12;

image_xscale = width/sprite_get_width(sprite_index);
image_yscale = height/sprite_get_height(sprite_index);

x= display_get_gui_width()/2;
y=30;

draw_self();

draw_text(x,y,joke);






















