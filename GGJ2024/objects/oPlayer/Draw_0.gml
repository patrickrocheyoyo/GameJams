/// @description Insert description here
// You can write your code in this editor



var scale = image_xscale;

if(image_angle<45 || image_angle>315)
{
	draw_sprite_ext(sPlayerBody,0,x,y+100*scale,scale,scale,0,c_white,1);
	draw_sprite_ext(sPlayerHead,0,x,y,scale,scale,0,c_white,1);
}
else if(image_angle<135)
{
	draw_sprite_ext(sPlayerBody,2,x-20*scale,y+120*scale,scale,scale,0,c_white,1);
	draw_sprite_ext(sPlayerHead,2,x,y,scale,scale,0,c_white,1);
}
else if(image_angle<225)
{
	draw_sprite_ext(sPlayerBody,1,x,y+100*scale,scale,scale,0,c_white,1);
	draw_sprite_ext(sPlayerHead,1,x,y,scale,scale,0,c_white,1);
}
else
{
	draw_sprite_ext(sPlayerBody,3,x+20*scale,y+120*scale,scale,scale,0,c_white,1);
	draw_sprite_ext(sPlayerHead,3,x,y,scale,scale,0,c_white,1);
}























