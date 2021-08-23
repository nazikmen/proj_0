function get_dialog(name){
var scr_soundoff=scr_sound_switch;
var scr_switch_loc=scr_switch_locale;
var scr_sghp_upgrade = scr_sing_player_hp_up;
var scr_sgdm_upgrade = scr_sing_player_dm_up;
var goto_menu = goto_main_menu;

switch name
{
case "options":{
	
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
case "sign_invertory":{
	
	sprite_index=spr_frame;
	var arr=get_dlg_btn_pos(2);
	with instance_create (arr[0],arr[1],obj_btn_dlg) 
	{
		sprite_index = spr_btn;
		scr=scr_sghp_upgrade;
		depth=other.depth-1;
		btn_text = "Up HP\nPrice: "+string(obj_player_sign.max_hp/2.8);
	}
	arr=get_dlg_btn_pos(3);
	with instance_create (arr[0],arr[1],obj_btn_dlg) 
	{
		get_locale_spr_flag(global.locale);
		scr=scr_sgdm_upgrade;
		depth=other.depth-1;
		btn_text = "Up damage\nPrice: "+string(obj_player_sign.damage*1.3);
	}
	arr=get_dlg_btn_pos(4);
	with instance_create (arr[0],arr[1],obj_btn_dlg) 
	{
		get_locale_spr_flag(global.locale);
		scr=scr_sgdm_upgrade;
		depth=other.depth-1;
		btn_text = "Exit";
	}
break;
}

}





}