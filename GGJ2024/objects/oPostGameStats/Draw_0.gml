/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_rectangle(x, y, x + 400, y + 200, false);

var time_secs = global.game_frames / 30;
var time_mins = floor(time_secs / 60);
time_secs = floor(time_secs % 60);

draw_set_color(c_white);
draw_set_font(gameFont);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x + 10, y + 10,
	"Jokes joked: " + string(global.numjokescorrect) + " / " + string(global.numjokescorrect + global.numjokesfailed) + "\n"
	+ "Longest streak: " + string(global.longest_streak) + "\n"
	+ "Time on stage: " + string(time_mins) + ":" + string(time_secs));
