/// @description Insert description here
// You can write your code in this editor


inputblock--;


if(inputblock<0)
{
	if(keyboard_check_released(vk_anykey) || mouse_check_button_released(mb_any) || gamepad_button_check_released(0,gp_face1))
	{

		CreateTransition(MenuRoom);
	
	}
}






















