/// @description load
var cam=view_get_camera(view_camera[0]);
camera_set_view_pos(cam,x-(global.game_width/2),y-(global.game_height/2));
instance_create(x,y,obj_joystick);
var cpos = get_view_cam();
instance_create(cpos[0]+64,cpos[3]-64,btn_radar,-100);
instance_create(cpos[2]-64,cpos[3]-64,obj_bur_interface_switch,-100);
