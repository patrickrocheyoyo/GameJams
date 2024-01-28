/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(gameFont);
draw_set_color(c_white);

var text = "";

var base_idx = current_page * MAX_PER_PAGE;
var end_idx = min((base_idx + MAX_PER_PAGE), array_length(jokes));

for(var i = base_idx; i < end_idx; ++i)
{
	text += jokes[@i].text + "\n" + jokes[@i].punchline + "\n\n";
}

draw_text((x + DRAW_BASE_X), (y + DRAW_BASE_Y), text);
