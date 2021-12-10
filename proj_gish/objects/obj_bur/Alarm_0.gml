/// @description check ebalo
alarm[0]=10;
if(obj_joystick.md and !zoom){
	if(drill_frame == 0){
		drill_frame = 1;
		exit;
	}
	if(drill_frame == 1){
		drill_frame = 0;
		exit;
	}
}
