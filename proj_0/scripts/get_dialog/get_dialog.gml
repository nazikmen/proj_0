function get_dialog(name){
var scr_soundoff=scr_sound_switch;
var scr_switch_loc=scr_switch_locale;
var scr_radar=scr_radar_spawn_chest;
var scr_close=scr_close_dlg;
//var scr_sghp_upgrade = scr_sing_player_hp_up;
//var scr_sgdm_upgrade = scr_sing_player_dm_up;
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
case "scaner":{
	var cx = obj_bur.x-global.game_width/2;
	var cy = obj_bur.y-global.game_height/2;
	sprite_index=spr_frame;
	var arr=get_dlg_btn_pos(5);
	with instance_create (cx+arr[0],cy+arr[1],obj_btn_dlg) 
	{
		sprite_index = spr_btn;
		if(round(obj_bur.y*1.1)>global.coins)image_blend=c_red;
		//image_index = global.sound;
		scr=scr_radar;
		depth=other.depth-1;
		loc_text_key = "scan_radar";
	}
	//arr=get_dlg_btn_pos(4);
	//with instance_create (arr[0],arr[1],obj_btn_dlg) 
	//{
	//	sprite_index = spr_btn;
	//	scr=goto_menu;
	//	depth=other.depth-1;
	//	btn_text = "Exit";
	//}
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
		btn_text = "Up HP\nPrice: "+string(round(obj_player_sign.max_hp/2.8));
		if(obj_player_sign.coins<round(obj_player_sign.max_hp/2.8))image_blend = c_red;
	}
	arr=get_dlg_btn_pos(3);
	with instance_create (arr[0],arr[1],obj_btn_dlg) 
	{
		sprite_index = spr_btn;
		scr=scr_sgdm_upgrade;
		depth=other.depth-1;
		btn_text = "Up damage\nPrice: "+string(round(obj_player_sign.damage*1.3));
		if(obj_player_sign.coins<round(obj_player_sign.damage*1.3))image_blend = c_red;
	}
	arr=get_dlg_btn_pos(4);
	with instance_create (arr[0],arr[1],obj_btn_dlg) 
	{
		sprite_index = spr_btn;
		scr=goto_menu;
		depth=other.depth-1;
		btn_text = "Exit";
	}
break;
}

}





}