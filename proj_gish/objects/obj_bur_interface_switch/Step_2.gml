/// @description Insert description here
// You can write your code in this editor
var cam=view_get_camera(view_camera[0]);
var cpos = get_view_cam();
var w = camera_get_view_width(cam);
var h = camera_get_view_height(cam);

x= cpos[0]+w-64*(w/start_w);
y= cpos[1]+h-64*(h/start_h);