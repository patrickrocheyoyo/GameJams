/// @description Draw satisfaction meter

/* Base screen co-ordinates to draw the satisfaction meter. */
var AM_X = 10;
var AM_Y = 10;

/* Sprite scaling factor for sasisfaction meter. */
var AM_SCALE = 0.5;

/* Position and size of meter rectangle in satisfaction meter sprite. */
var BAR_X = AM_SCALE * 172;
var BAR_Y = AM_SCALE * 152;
var BAR_W = AM_SCALE * 58;
var BAR_H = AM_SCALE * 778;

if(instance_find(oSeqHandler, 0) != noone)
{
	/* Don't draw audience satisfaction meter over the level transition. */
	exit;
}

var bar_offset = BAR_H * (1.0 - (health / 100));

draw_set_color(#47a43b);
draw_rectangle(
	AM_X + BAR_X,
	AM_Y + BAR_Y + bar_offset,
	AM_X + BAR_X + BAR_W,
	AM_Y + BAR_Y + BAR_H,
	false);

draw_sprite_ext(sAudienceMeter, 0, AM_X, AM_Y, AM_SCALE, AM_SCALE, 0, c_white, 1.0);
