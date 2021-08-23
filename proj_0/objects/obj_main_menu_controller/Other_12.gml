/// @description Create obj
// You can write your code in this editor
with instance_create(room_width/2,200,obj_main_menu_btns)
{
text="PLAY";
loc_text_key = "play_btn"//get_loc_text
}
with instance_create(room_width/2,400,obj_main_menu_btns)
{
text="OPTIONS";
loc_text_key = "options_btn"
}
with instance_create(room_width/2,600,obj_main_menu_btns)
{
text="EXIT";
loc_text_key = "exit_btn"
}