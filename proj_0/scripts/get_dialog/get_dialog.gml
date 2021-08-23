function get_dialog(name){
var scr_soundoff=scr_sound_switch;
var scr_switch_loc=scr_switch_locale;

switch name
{
case "options":
	
	sprite_index=spr_frame;
	var arr=get_dlg_btn_pos(0);
	with instance_create (arr[0],arr[1],obj_btn_dlg) 
	{
		sprite_index = spr_sound;
		image_index = global.sound;
		scr=scr_soundoff;
		depth=other.depth-1;
		loc_text_key = "sound_btn";
	}
	arr=get_dlg_btn_pos(1);
	with instance_create (arr[0],arr[1],obj_btn_dlg) 
	{
		get_locale_spr_flag(global.locale);
		scr=scr_switch_loc;
		depth=other.depth-1;
	}
break;


}





}