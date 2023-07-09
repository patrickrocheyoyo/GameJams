/// @description Insert description here
// You can write your code in this editor



function action(){
	doorangle = image_angle;
	opendoor = instance_create_layer(x,y,layer, oOpenTrapDoor);
	opendoor.image_angle = doorangle;
	instance_destroy();
	
}

drawMe = true;