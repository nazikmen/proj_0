/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_constructor_controller)){
	if(!md){	
		md = true;
		md_x = x-mt_mouse_x;
		md_y = y-mt_mouse_y;
	}
	exit;
}


if (md and anim) exit;

md=true;
anim=true;
cnt=30;
event_user(15);