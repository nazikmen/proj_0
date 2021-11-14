// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_center_coords(){
	var v = get_view_cam();
	var cam=view_get_camera(view_camera[0]);
	var w = camera_get_view_width(cam);
	var h = camera_get_view_height(cam);
	return [v[0]+w/2,v[1]+h/2];
}