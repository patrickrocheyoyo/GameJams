/// @description 





	//Check for random non-wave spawners
	
	
	
	
	deltax = 0;
	deltay = 0;

	velx *=0.5;
	vely *=0.5;

	var pressed = true;
	
	switch(os_type)
	{
		case os_windows:
			pressed = true;//mouse_check_button_pressed(mb_none); //don't really understand why this works on pc but it does...
			break;
		default:
			pressed = mouse_check_button(mb_left);
			break;
	}
	
	var padinput = false;


	var padshotx=-1;
	var padshoty =-1;
	var padshooting = false;

	for(var i= 0;i<gamepad_get_device_count();i++)
	{
		if(gamepad_is_connected(i))
		{
	//		show_debug_message("Gamepad " + string(i) + " of " +string(gamepad_get_device_count()) + " connected");
			var padx = gamepad_axis_value(i,gp_axislh);
			var pady = gamepad_axis_value(i,gp_axislv);
			
			if(padx*padx+pady*pady >global.deadzonevalue *global.deadzonevalue)
			{
				padinput = true;
				var olen = sqrt(padx*padx+pady*pady);
				
				var len = olen-global.deadzonevalue;
				
				var fract = len/olen;
				
				fract = fract*fract;
				
				deltax = fract*padx*global.joysticksensitivity;
				deltay = fract*pady*global.joysticksensitivity;	
			}
			
			padshotx = gamepad_axis_value(i,gp_axisrh);
			padshoty = gamepad_axis_value(i,gp_axisrv);
			
			
			var olen = sqrt(padshotx*padshotx+padshoty*padshoty);
			
			if(olen<global.deadzonevalue)
			{
				padshotx = 0;
				padshoty=0;
			}
			else
			{
				padshooting = true;
				padshotx = padshotx/olen;
				padshoty = padshoty/olen;
				
			}
		}
	}


	if(os_type==os_windows)
	{
		
		padinput = true;
	
		padshotx =0;
		padshoty =0;
	
		if(keyboard_check(vk_left))
			padshotx = -1;
		if(keyboard_check(vk_right))
			padshotx =1.0;
		
		if(keyboard_check(vk_up))
			padshoty=-1;
		if(keyboard_check(vk_down))
			padshoty=1;

		if((padshotx!=0) || (padshoty!=0))
			padshooting = true;


		if(keyboard_check(ord("A")))
			deltax = -1*global.joysticksensitivity;;
		if(keyboard_check(ord("D")))
			deltax =1.0*global.joysticksensitivity;;
		
		if(keyboard_check(ord("W")))
			deltay=-1*global.joysticksensitivity;;
		if(keyboard_check(ord("S")))
			deltay=1*global.joysticksensitivity;;
	}
	if(pressed && (! padinput))
	{
	
		if(last_mouse_down)
		{
			deltax = (device_mouse_x(0) - last_mouse_x)*global.touchsensitivity;
			deltay = (device_mouse_y(0) - last_mouse_y)*global.touchsensitivity;
	
	
	//		show_debug_message("mouse_check_button_pressed(0)=true && last_mouse_down device_mouse_x(0)=" + string(device_mouse_x(0))+ " y:" + string(device_mouse_y(0))); 
	//		show_debug_message("last_mouse_x:" + string(last_mouse_x)+" y:"+string(last_mouse_y));
	
			last_mouse_x = device_mouse_x(0);
			last_mouse_y = device_mouse_y(0);
			
			
		}
		else
		{
			last_mouse_down=true;
			last_mouse_x = device_mouse_x(0);
			last_mouse_y = device_mouse_y(0);
			
	//		show_debug_message("mouse_check_button_pressed(0)=true && last_mouse_down not set" + string(device_mouse_x(0))+ " y:" + string(device_mouse_y(0))); 
		
		
		}
	}
	else
	{
		last_mouse_down = false;
		last_mouse_x = -1;
		last_mouse_y = -1;
	//		show_debug_message("mouse_check_button_pressed(0)=false"); 
	}



	velx += deltax*0.6;
	vely += deltay*0.6;

	x+=velx;
	y+=vely;
	
	
	if(bbox_left<0)
	{
		x-=bbox_left;
	}
	if(bbox_right>room_width)
	{
		x-=(bbox_right-room_width);
	}
	
	var topy = 0;

	if(bbox_top<topy)
	{
		y+=(topy-bbox_top);
	}

	
	if(bbox_bottom>room_height)
	{
		y-=(bbox_bottom-room_height);
	}

	


	





targimage_angle = 90 -darctan2(-vely,-velx);


if(targimage_angle<0)
	targimage_angle +=360;
	

if(abs(targimage_angle-image_angle)>180)
{
	if(targimage_angle<image_angle)
		targimage_angle+=360;
	
	if(targimage_angle>image_angle)
		targimage_angle-=360;
}

	
image_angle = image_angle+(targimage_angle-image_angle)*image_angle_multiplier;

if(image_angle<0)
	image_angle+=360;
else if(image_angle>=360)
	image_angle -= 360;




