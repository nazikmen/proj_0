function get_dialog(name){
var scr_soundoff=scr_sound_switch;
var scr_switch_loc=scr_switch_locale;
var scr_radar=scr_radar_spawn_chest;
var scr_close=scr_close_dlg;
//var scr_sghp_upgrade = scr_sing_player_hp_up;
//var scr_sgdm_upgrade = scr_sing_player_dm_up;
var goto_menu = goto_main_menu;

var centr = get_center_coords();

switch name
{

case "options_1":{
	
	sprite_index=spr_panel_window;
	
	var arr=get_dlg_btn_pos(6);
	with(instance_create(centr[0]+arr[0]*get_zoom_scale(),centr[1]+arr[1]*get_zoom_scale(),obj_btn_dlg,depth-1)){
		sprite_index = spr_btn;
		ind = 6;
		scr = noone;
		btn_text = "";
		loc_text_key = "";
		spr_text = noone;
		set_scale(get_zoom_scale());
	}
	
	var arr=get_dlg_text_pos(0);
	with(instance_create(centr[0]+arr[0]*get_zoom_scale(),centr[1]+arr[1]*get_zoom_scale(),obj_text_dlg,depth-1)){
		ind = 0;
		text = get_loc_text("lorem50");
		text_size = 24;
		text_width = clamp(sprite_get_width(other.sprite_index)-20,100,infinity);
		set_scale(get_zoom_scale());
	}
	
break;
}

case "dlg_upgrade_depth":{
	sprite_index = spr_panel_window;
	var kisl = 300;
	with(obj_bur){
		kisl = kislorod;
	}
	
	var arr=get_dlg_btn_pos(10);
	with(instance_create(centr[0]+arr[0]*get_zoom_scale(),centr[1]+arr[1]*get_zoom_scale(),obj_btn_dlg,depth-1)){
		price = get_price_upgrade_depth(kisl);
		sprite_index = spr_btn;
		ind = 10;
		scr = scr_upgrade_depth;
		btn_text = string(short_num(price));
		loc_text_key = "";
		spr_text = noone;
		set_scale(get_zoom_scale());
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
case "bur_interface":{
	//[loc_x,loc_y,sz,scr,sprite,sprite2,text]
	var arr_btns = [[-100,0,0.5,scr_open_dlg_upgrade_speed,noone,noone,"spd"],
					[100,0,0.5,scr_open_dlg_upgrade_depth,noone,noone,"O²"],
					[0,100,0.5,scr_open_dlg_upgrade_dohodnost,noone,noone,"Prib"],
					[0,-100,0.5,scr_open_dlg_bur_invertory,noone,noone,"Inv"]]
	for(var i=0;i<array_length(arr_btns);i++){
		with(instance_create(x,y,obj_bur_interface_btn,depth-1)){
			end_pos[0]=x+arr_btns[i][0];
			end_pos[1]=y+arr_btns[i][1];
			end_scale=arr_btns[i][2];
			scr=arr_btns[i][3];
			if(sprite_exists(arr_btns[i][4]) and arr_btns[i][4]!=noone)sprite_index=arr_btns[i][4];
			if(sprite_exists(arr_btns[i][5]))spr_to_draw=arr_btns[i][5];
			btn_text = arr_btns[i][6];
		}
	}
break;
}
}
}