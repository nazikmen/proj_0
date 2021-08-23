/// @description Insert description here
// You can write your code in this editor
instance_create(room_width/2,room_height-100,obj_player_sign);
instance_create(0,0,obj_ramka,-2000)
instance_create(room_width/2,room_height-20-sprite_get_height(spr_tower)/2,obj_tower);
with instance_create (50,50,obj_btn_dlg,-2001) 
	{
		sprite_index = spr_btn;
		scr=goto_main_menu;
		loc_text_key = "btn_menu";
	}

depth = 99;

wv = 0;
arr_enm = get_wave_enemys(wv);
alarm[0] = 1;
