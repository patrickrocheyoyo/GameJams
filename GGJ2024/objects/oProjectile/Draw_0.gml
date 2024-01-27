/// @description Insert description here
// You can write your code in this editor


if(state == eState.Flying)
{
	draw_sprite_ext(sTrail,frame,x,y,1,1,180+image_angle,c_white,0.5);
}

draw_self();

draw_set_color(c_red);
draw_text(xtarget, ytarget, "X");
