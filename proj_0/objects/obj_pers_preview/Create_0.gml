/// @description Insert description here
// You can write your code in this editor
text_pers_list = ds_list_create();
pers_selected = 0;
if(variable_global_exists("choosed_char"))pers_selected = global.choosed_char;
else global.choosed_char = pers_selected;
image_xscale = 4;
image_yscale = 4;
alarm[0]=1;
x=room_width/2;
y=room_height/2-150;
var surf = surface_create(300,sprite_height);
surface_set_target(surf);
draw_clear_alpha(c_gray,0.01);
draw_text(30,sprite_height/2,">")
surface_reset_target();
spr_strel = sprite_create_from_surface(surf,0,0,300,sprite_height,0,0,150,sprite_height/2);
surface_free(surf);
with(instance_create(x,y,obj_ramka)){
	par_obj = other.id;
}
with instance_create (bbox_left-sprite_get_width(spr_strel)/2,y,obj_btn_dlg) 
	{
		depth = other.depth-1;
		sprite_index = other.spr_strel;
		//image_alpha = 1;
		image_angle = 180;
		
		scr=scr_list_pers;
		depth=other.depth-1;
		functional_var = "<";
	}
with instance_create (bbox_right+sprite_get_width(spr_strel)/2,y,obj_btn_dlg)
	{
		depth = other.depth-1;
		sprite_index = other.spr_strel;
		//image_alpha = 1;
		scr=scr_list_pers;
		depth=other.depth-1;
		functional_var = ">";
	}
	
with instance_create (global.view_x+sprite_get_width(spr_btn)/2,global.game_height-sprite_get_height(spr_btn)/2,obj_btn_dlg) 
	{
		depth = other.depth-1;
		sprite_index = spr_btn;
		scr=goto_main_menu;
		depth=other.depth-1;
		loc_text_key = "btn_menu";
	}
with instance_create (room_width+((global.game_width-room_width)/2)-sprite_get_width(spr_btn)/2,global.game_height-sprite_get_height(spr_btn)/2,obj_btn_dlg) 
	{
		depth = other.depth-1;
		sprite_index = spr_btn;
		scr=room_goto_singleplayer;
		depth=other.depth-1;
		loc_text_key = "play_btn";
	}
	
#region //presu
ds_list_add(text_pers_list,
"шрейдер нахуй",
"Псина",
"Туалетный ниндзя",
"Сынок",
"Чурка",
"Азиатская чурка",
"Щасливая чурка",
"Ведроголовый черт",
"Дед инсайд",
"Ниндзя",
"Хуйня",
"Крутой пес",
"Дед",
"Чел в черном",
"Бабка",
"Усатый хуй",
"Чел",
"Всратая мумия",
"Бизнес хуй",
"Мусор?",
"Привет узкоглазым",
"Скелет",
"Отпрысок",
"Злок отпрысок",
"Чукча",
"Шлюха",
"Скелет б/у",
)
#endregion