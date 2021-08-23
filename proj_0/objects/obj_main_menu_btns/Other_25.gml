/// @description Insert description here
// You can write your code in this editor
switch text
{
case "PLAY":
room_goto(rm_gm_choise_char);
break;

case "OPTIONS":
with instance_create(1,1,obj_dlg)
{
name="options";
event_user(1);
}
break;

case "EXIT":
game_end();
break;

}