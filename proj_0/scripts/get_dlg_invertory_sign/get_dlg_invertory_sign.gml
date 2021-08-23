// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_dlg_invertory_sign(){
	with instance_create(1,1,obj_dlg)
	{
		name="sign_invertory";
		event_user(1);
	}
}